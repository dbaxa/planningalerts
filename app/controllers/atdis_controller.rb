# typed: strict
# frozen_string_literal: true

class AtdisController < ApplicationController
  extend T::Sig

  sig { void }
  def test
    if params[:url].present?
      feed = Feed.create_from_url(params[:url])
      begin
        @page = T.let(feed.applications, T.untyped)
      rescue RestClient::InternalServerError
        @error = T.let("Remote server returned an internal server error (error code 500) accessing #{params[:url]}", T.nilable(String))
      rescue RestClient::RequestTimeout
        @error = "Timeout in request to #{params[:url]}. Remote server did not respond in a reasonable amount of time."
      rescue RestClient::Exception => e
        @error = "Could not load data - #{e}"
      rescue URI::InvalidURIError
        @error = "The url appears to be invalid #{params[:url]}"
      end
      @feed = T.let(feed, T.nilable(Feed))
    else
      @feed = Feed.new
    end
  end

  # The job here is to take ugly posted parameters and redirect to a much simpler url
  sig { void }
  def test_redirect
    @feed = Feed.new(
      base_url: params[:feed][:base_url],
      page: params[:feed][:page],
      lodgement_date_start: params[:feed][:lodgement_date_start],
      lodgement_date_end: params[:feed][:lodgement_date_end],
      last_modified_date_start: params[:feed][:last_modified_date_start],
      last_modified_date_end: params[:feed][:last_modified_date_end],
      street: params[:feed][:street],
      suburb: params[:feed][:suburb],
      postcode: params[:feed][:postcode]
    )
    if @feed.valid?
      redirect_to atdis_test_url(url: @feed.url)
    else
      render "test"
    end
  end

  sig { void }
  def feed
    file = Feed.example_path(params[:number], params[:page] || 1)
    if File.exist?(file)
      render file: file, content_type: Mime[:json], layout: false
    else
      render plain: "not available", status: :not_found
    end
  end

  sig { void }
  def specification; end
end
