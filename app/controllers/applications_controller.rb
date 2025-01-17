# typed: strict
# frozen_string_literal: true

class ApplicationsController < ApplicationController
  extend T::Sig

  # TODO: Switch actions from JS to JSON format and remove this
  skip_before_action :verify_authenticity_token, only: %i[per_day per_week]
  before_action :check_application_redirect, only: %i[show nearby]

  sig { void }
  def index
    description = +"Recent applications"

    authority_id = params[:authority_id]
    if authority_id
      # TODO: Handle the situation where the authority name isn't found
      authority = Authority.find_short_name_encoded!(authority_id)
      apps = authority.applications.with_first_version.order("date_scraped DESC")
      description << " from #{authority.full_name_and_state}"
    else
      description << " within the last #{Application.nearby_and_recent_max_age_months} months"
      apps = Application.with_first_version.order("date_scraped DESC").where("date_scraped > ?", Application.nearby_and_recent_max_age_months.months.ago)
    end

    @authority = T.let(authority, T.nilable(Authority))
    @description = T.let(description, T.nilable(String))
    @applications = T.let(apps.page(params[:page]).per(30), T.untyped)
    @alert = T.let(Alert.new, T.nilable(Alert))
  end

  sig { void }
  def trending
    @applications = Application
                    .with_current_version
                    .where("date_scraped > ?", 4.weeks.ago)
                    .order(visible_comments_count: :desc)
                    .limit(20)
  end

  # JSON api for returning the number of new scraped applications per day
  sig { void }
  def per_day
    authority = Authority.find_short_name_encoded!(params[:authority_id])
    respond_to do |format|
      format.js do
        render json: authority.new_applications_per_day
      end
    end
  end

  sig { void }
  def per_week
    authority = Authority.find_short_name_encoded!(params[:authority_id])
    respond_to do |format|
      format.js do
        render json: authority.new_applications_per_week
      end
    end
  end

  sig { void }
  def address
    @q = T.let(params[:q], T.nilable(String))
    radius = params[:radius] ? params[:radius].to_f : 2000.0
    @radius = T.let(radius, T.nilable(Float))
    sort = params[:sort] || "time"
    @sort = T.let(sort, T.nilable(String))
    per_page = 30
    @page = T.let(params[:page], T.nilable(String))
    if @q
      result = GoogleGeocodeService.call(@q)
      top = result.top
      if top.nil?
        @other_addresses = T.let([], T.nilable(T::Array[String]))
        @error = T.let(result.error, T.nilable(String))
      else
        @q = top.full_address
        @alert = Alert.new(address: @q)
        @other_addresses = T.must(result.rest).map(&:full_address)
        @applications = Application.with_current_version.near(
          [top.lat, top.lng], radius / 1000,
          units: :km,
          latitude: "application_versions.lat",
          longitude: "application_versions.lng"
        )
        if sort == "time"
          @applications = @applications
                          .reorder("date_scraped DESC")
        end
        @applications = @applications.page(params[:page]).per(per_page)
        @rss = T.let(applications_path(format: "rss", address: @q, radius: radius), T.nilable(String))
      end
    end
    @trending = T.let(Application
                        .with_current_version
                        .where("date_scraped > ?", 4.weeks.ago)
                        .order(visible_comments_count: :desc)
                        .limit(4), T.untyped)
    @set_focus_control = T.let("q", T.nilable(String))
    # Use a different template if there are results to display
    render "address_results" if @q && @error.nil?
  end

  sig { void }
  def search
    # TODO: Fix this hacky ugliness
    per_page = request.format == Mime[:html] ? 30 : Application.max_per_page

    @q = params[:q]
    if @q
      @applications = Application.search(@q, fields: [:description], order: { date_scraped: :desc }, highlight: { tag: "<span class=\"highlight\">" }, page: params[:page], per_page: per_page)
      @rss = search_applications_path(format: "rss", q: @q, page: nil)
    end
    @description = @q ? "Search: #{@q}" : "Search"

    respond_to do |format|
      format.html
      format.rss { render "api/index", format: :rss, layout: false, content_type: Mime[:xml] }
    end
  end

  sig { void }
  def show
    application = Application.find(params[:id])
    @application = T.let(application, T.nilable(Application))
    @comments = T.let(application.comments.confirmed.order(:confirmed_at), T.untyped)
    @nearby_count = T.let(application.find_all_nearest_or_recent.size, T.nilable(Integer))
    @add_comment = T.let(AddComment.new(
                           application: application
                         ), T.nilable(AddComment))
    # Required for new email alert signup form
    @alert = Alert.new(address: application.address)

    respond_to do |format|
      format.html
    end
  end

  sig { void }
  def nearby
    @sort = params[:sort]
    @rss = nearby_application_url(
      id: params[:id],
      sort: params[:sort],
      format: "rss",
      page: nil
    )

    # TODO: Fix this hacky ugliness
    per_page = request.format == Mime[:html] ? 30 : Application.max_per_page

    @application = Application.find(params[:id])
    case @sort
    when "time"
      @applications = @application.find_all_nearest_or_recent.reorder("application_versions.date_scraped DESC")
    when "distance"
      @applications = @application.find_all_nearest_or_recent
    else
      redirect_to sort: "time"
      return
    end
    @applications = @applications.page(params[:page]).per(per_page)

    respond_to do |format|
      format.html { render "nearby" }
      format.rss { render "api/index", format: :rss, layout: false, content_type: Mime[:xml] }
    end
  end

  private

  sig { void }
  def check_application_redirect
    redirect = ApplicationRedirect.find_by(application_id: params[:id])
    redirect_to(id: redirect.redirect_application_id) if redirect
  end
end
