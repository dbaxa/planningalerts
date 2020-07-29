# typed: strict
# frozen_string_literal: true

class ImportApplicationsJob < ApplicationJob
  extend T::Sig

  queue_as :default

  sig { params(authority: Authority).void }
  def perform(authority:)
    scrape_delay = ENV["SCRAPE_DELAY"].to_i
    info_logger = AuthorityLogger.new(authority.id, logger)
    ImportApplicationsService.call(authority: authority, scrape_delay: scrape_delay, logger: info_logger, morph_api_key: T.must(ENV["MORPH_API_KEY"]))
  end
end
