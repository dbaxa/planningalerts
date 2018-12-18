# frozen_string_literal: true

class Alert < ApplicationRecord
  belongs_to :alert_subscriber, optional: true

  validates :radius_meters, numericality: { greater_than: 0, message: "isn't selected" }
  validate :validate_address

  before_validation :geocode_from_address, unless: :geocoded?
  include EmailConfirmable

  scope(:active, -> { where(confirmed: true, unsubscribed: false) })
  scope(:in_past_week, -> { where("created_at > ?", 7.days.ago) })

  before_create :attach_alert_subscriber

  def location=(loc)
    return unless loc

    self.lat = loc.lat
    self.lng = loc.lng
  end

  def geocoded?
    location.present?
  end

  def unsubscribe!
    update!(unsubscribed: true, unsubscribed_at: Time.zone.now)
  end

  # Pass an array of objects. Count the distribution of objects and return as a hash of object: :count
  def self.frequency_distribution(array)
    freq = {}
    array.each do |i|
      freq[i] = (freq[i] || 0) + 1
    end
    freq.to_a.sort { |i, j| -(i[1] <=> j[1]) }
  end

  def location
    Location.new(lat, lng) if lat && lng
  end

  # Applications that have been scraped since the last time the user was sent an alert
  def recent_applications
    Application.order("date_received DESC").near([location.lat, location.lng], radius_km, units: :km).where("date_scraped > ?", cutoff_time)
  end

  # Applications in the area of interest which have new comments made since we were last alerted
  def applications_with_new_comments
    Application.near([location.lat, location.lng], radius_km, units: :km)
               .joins(:comments)
               .where("comments.confirmed_at > ?", cutoff_time)
               .where("comments.confirmed" => true)
               .where("comments.hidden" => false).distinct
  end

  def applications_with_new_replies
    Application.near([location.lat, location.lng], radius_km, units: :km)
               .joins(:replies)
               .where("replies.received_at > ?", cutoff_time)
               .distinct
  end

  def new_comments
    comments = []
    # Doing this in this roundabout way because I'm not sure how to use "near" together with joins
    applications_with_new_comments.each do |application|
      comments += application.comments.visible.where("comments.confirmed_at > ?", cutoff_time)
    end
    comments
  end

  def new_replies
    replies = []
    # Doing this in this roundabout way because I'm not sure how to use "near" together with joins
    applications_with_new_replies.each do |application|
      replies += application.replies.where("replies.received_at > ?", cutoff_time)
    end
    replies
  end

  def cutoff_time
    last_sent || Date.yesterday
  end

  def radius_km
    radius_meters / 1000.0
  end

  def confirm!
    update!(confirmed: true)
  end

  # Process this email alert and send out an email if necessary. Returns number of applications and comments sent.
  def process!
    applications = recent_applications
    comments = new_comments
    replies = new_replies

    if !applications.empty? || !comments.empty? || !replies.empty?
      AlertNotifier.alert(self, applications, comments, replies).deliver_now
      self.last_sent = Time.zone.now
    end
    self.last_processed = Time.zone.now
    save!

    # Update the tallies on each application.
    applications.each do |application|
      application.increment(:no_alerted)
    end

    # Return number of applications, comments and replies sent
    [applications.size, comments.size, replies.size]
  end

  # TODO: Also include no_replies in stats and return
  # TODO: Move to its own service class
  def self.process_alerts(alert_ids)
    # Only send alerts to confirmed users
    total_no_emails = 0
    total_no_applications = 0
    total_no_comments = 0
    Alert.find(alert_ids).each do |alert|
      no_applications, no_comments = alert.process!
      next if no_applications.zero? && no_comments.zero?

      total_no_applications += no_applications
      total_no_comments += no_comments
      total_no_emails += 1
    end

    # Update statistics. Updating the Stat at the end of each mail run has the advantage of not continiously invalidating
    # page caches during mail runs.
    Stat.emails_sent += total_no_emails
    Stat.applications_sent += total_no_applications
    EmailBatch.create!(no_emails: total_no_emails, no_applications: total_no_applications,
                       no_comments: total_no_comments)
    [total_no_emails, total_no_applications, total_no_comments]
  end

  def geocode_from_address
    @geocode_result = Location.geocode(address)

    return if @geocode_result.error || @geocode_result.all.many?

    self.location = @geocode_result
    self.address = @geocode_result.full_address
  end

  def attach_alert_subscriber
    self.alert_subscriber = AlertSubscriber.find_or_create_by(email: email)
  end

  private

  def validate_address
    # Only validate the street address if we used the geocoder
    return unless @geocode_result

    if @geocode_result.error
      errors.add(:address, @geocode_result.error)
    elsif @geocode_result.all.many?
      errors.add(:address, "isn't complete. Please enter a full street address, including suburb and state, e.g. #{@geocode_result.full_address}")
    end
  end
end
