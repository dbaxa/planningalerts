# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `searchkick` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module Searchkick
  extend(::Searchkick::SearchkickWithInstrumentation)

  class << self
    def aws_credentials; end
    def aws_credentials=(creds); end
    def callbacks(value = T.unsafe(nil)); end
    def callbacks?(default: T.unsafe(nil)); end
    def callbacks_value; end
    def callbacks_value=(value); end
    def client; end
    def client=(_arg0); end
    def client_options; end
    def client_options=(_arg0); end
    def disable_callbacks; end
    def enable_callbacks; end
    def env; end
    def env=(_arg0); end
    def index_prefix; end
    def index_prefix=(_arg0); end
    def index_suffix; end
    def index_suffix=(_arg0); end
    def indexer; end
    def load_records(records, ids); end
    def model_options; end
    def model_options=(_arg0); end
    def models; end
    def models=(_arg0); end
    def opensearch?; end
    def queue_name; end
    def queue_name=(_arg0); end
    def redis; end
    def redis=(_arg0); end
    def reindex_status(index_name); end
    def relation?(klass); end
    def search(term = T.unsafe(nil), model: T.unsafe(nil), **options, &block); end
    def search_method_name; end
    def search_method_name=(_arg0); end
    def search_timeout; end
    def search_timeout=(_arg0); end
    def server_below7?; end
    def server_below?(version); end
    def server_info; end
    def server_version; end
    def signer_middleware_aws_params; end
    def signer_middleware_key; end
    def timeout; end
    def timeout=(_arg0); end
    def warn(message); end
    def with_redis; end
    def wordnet_path; end
    def wordnet_path=(_arg0); end
  end
end

class Searchkick::BulkIndexer
  def initialize(index); end

  def batches_left; end
  def bulk_delete(records); end
  def bulk_index(records); end
  def bulk_update(records, method_name); end
  def import_scope(relation, resume: T.unsafe(nil), method_name: T.unsafe(nil), async: T.unsafe(nil), batch: T.unsafe(nil), batch_id: T.unsafe(nil), full: T.unsafe(nil), scope: T.unsafe(nil)); end
  def index; end

  private

  def batch_size; end
  def batches_key; end
  def bulk_reindex_job(scope, batch_id, options); end
  def each_batch(scope); end
  def full_reindex_async(scope); end
  def import_or_update(records, method_name, async); end
  def with_retries; end
end

class Searchkick::BulkReindexJob < ::ActiveJob::Base
  def perform(class_name:, record_ids: T.unsafe(nil), index_name: T.unsafe(nil), method_name: T.unsafe(nil), batch_id: T.unsafe(nil), min_id: T.unsafe(nil), max_id: T.unsafe(nil)); end

  class << self
    def queue_name; end
  end
end

module Searchkick::ControllerRuntime
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Searchkick::ControllerRuntime::ClassMethods)

  def searchkick_runtime; end
  def searchkick_runtime=(_arg0); end

  protected

  def append_info_to_payload(payload); end
  def cleanup_view_runtime; end
  def process_action(action, *args); end
end

module Searchkick::ControllerRuntime::ClassMethods
  def log_process_action(payload); end
end

class Searchkick::DangerousOperation < ::Searchkick::Error
end

class Searchkick::Error < ::StandardError
end

class Searchkick::HashWrapper < ::Hashie::Mash
end

class Searchkick::ImportError < ::Searchkick::Error
end

class Searchkick::Index
  include(::Searchkick::IndexWithInstrumentation)

  def initialize(name, options = T.unsafe(nil)); end

  def alias_exists?; end
  def all_indices(unaliased: T.unsafe(nil)); end
  def batches_left; end
  def clean_indices; end
  def conversions_fields; end
  def create(body = T.unsafe(nil)); end
  def create_index(index_options: T.unsafe(nil)); end
  def delete; end
  def document_type(record); end
  def exists?; end
  def import_scope(relation, **options); end
  def index_options; end
  def klass_document_type(klass, ignore_type = T.unsafe(nil)); end
  def locations_fields; end
  def mapping; end
  def name; end
  def options; end
  def promote(new_name, update_refresh_interval: T.unsafe(nil)); end
  def refresh; end
  def refresh_interval; end
  def reindex(relation, method_name, scoped:, full: T.unsafe(nil), scope: T.unsafe(nil), **options); end
  def reindex_queue; end
  def reload_synonyms; end
  def retrieve(record); end
  def search_id(record); end
  def settings; end
  def similar_record(record, **options); end
  def suggest_fields; end
  def swap(new_name, update_refresh_interval: T.unsafe(nil)); end
  def tokens(text, options = T.unsafe(nil)); end
  def total_docs; end
  def update_settings(settings); end
  def uuid; end

  protected

  def bulk_indexer; end
  def check_uuid(old_uuid, new_uuid); end
  def client; end
  def import_before_promotion(index, relation, **import_options); end
  def index_settings; end
  def reindex_scope(relation, import: T.unsafe(nil), resume: T.unsafe(nil), retain: T.unsafe(nil), async: T.unsafe(nil), refresh_interval: T.unsafe(nil), scope: T.unsafe(nil)); end
end

class Searchkick::IndexOptions
  def initialize(index); end

  def add_search_synonyms(settings); end
  def add_synonyms(settings); end
  def add_wordnet(settings); end
  def below62?; end
  def below70?; end
  def below73?; end
  def default_analyzer; end
  def default_type; end
  def generate_mappings; end
  def generate_settings; end
  def index_options; end
  def index_type; end
  def options; end
  def set_deep_paging(settings); end
  def update_language(settings, language); end
  def update_stemming(settings); end
end

module Searchkick::IndexWithInstrumentation
  def bulk_delete(records); end
  def bulk_index(records); end
  def bulk_update(records, *args); end
  def import(records); end
  def remove(record); end
  def store(record); end
  def update_record(record, method_name); end
end

class Searchkick::Indexer
  include(::Searchkick::IndexerWithInstrumentation)

  def initialize; end

  def queue(items); end
  def queued_items; end
end

module Searchkick::IndexerWithInstrumentation
  def perform; end
end

class Searchkick::InvalidQueryError < ::Elasticsearch::Transport::Transport::Errors::BadRequest
end

class Searchkick::LogSubscriber < ::ActiveSupport::LogSubscriber
  def multi_search(event); end
  def request(event); end
  def search(event); end

  class << self
    def reset_runtime; end
    def runtime; end
    def runtime=(value); end
  end
end

class Searchkick::Middleware < ::Faraday::Middleware
  def call(env); end
end

class Searchkick::MissingIndexError < ::Searchkick::Error
end

module Searchkick::Model
  def searchkick(**options); end
end

class Searchkick::MultiSearch
  def initialize(queries); end

  def perform; end
  def queries; end

  private

  def client; end
  def perform_search(search_queries, perform_retry: T.unsafe(nil)); end
end

class Searchkick::ProcessBatchJob < ::ActiveJob::Base
  def perform(class_name:, record_ids:, index_name: T.unsafe(nil)); end

  class << self
    def queue_name; end
  end
end

class Searchkick::ProcessQueueJob < ::ActiveJob::Base
  def perform(class_name:, index_name: T.unsafe(nil), inline: T.unsafe(nil)); end

  class << self
    def queue_name; end
  end
end

class Searchkick::Query
  include(::Searchkick::QueryWithInstrumentation)
  extend(::Forwardable)

  def initialize(klass, term = T.unsafe(nil), **options); end

  def [](*args, &block); end
  def aggregations(*args, &block); end
  def aggs(*args, &block); end
  def any?(*args, &block); end
  def body; end
  def body=(_arg0); end
  def current_page(*args, &block); end
  def each(*args, &block); end
  def each_with_hit(*args, &block); end
  def empty?(*args, &block); end
  def entry_name(*args, &block); end
  def error(*args, &block); end
  def execute; end
  def first(*args, &block); end
  def first_page?(*args, &block); end
  def handle_response(response); end
  def hits(*args, &block); end
  def klass; end
  def last_page?(*args, &block); end
  def length(*args, &block); end
  def limit_value(*args, &block); end
  def map(*args, &block); end
  def model_name(*args, &block); end
  def next_page(*args, &block); end
  def num_pages(*args, &block); end
  def offset(*args, &block); end
  def offset_value(*args, &block); end
  def options; end
  def out_of_range?(*args, &block); end
  def padding(*args, &block); end
  def params; end
  def per_page(*args, &block); end
  def prev_page(*args, &block); end
  def previous_page(*args, &block); end
  def records(*args, &block); end
  def response(*args, &block); end
  def results(*args, &block); end
  def retry_misspellings?(response); end
  def scroll(*args, &block); end
  def searchkick_index; end
  def searchkick_klass; end
  def searchkick_options; end
  def size(*args, &block); end
  def slice(*args, &block); end
  def suggestions(*args, &block); end
  def term; end
  def to_a(*args, &block); end
  def to_ary(*args, &block); end
  def to_curl; end
  def took(*args, &block); end
  def total_count(*args, &block); end
  def total_entries(*args, &block); end
  def total_pages(*args, &block); end
  def with_details(*args, &block); end

  private

  def base_field(k); end
  def below61?; end
  def below70?; end
  def below73?; end
  def below75?; end
  def body_options; end
  def boost_filter(field, factor: T.unsafe(nil), modifier: T.unsafe(nil), missing: T.unsafe(nil)); end
  def boost_filters(boost_by, modifier: T.unsafe(nil)); end
  def build_query(query, filters, should, must_not, custom_filters, multiply_filters); end
  def coordinate_array(value); end
  def custom_filter(field, value, factor); end
  def handle_error(e); end
  def location_value(value); end
  def prepare; end
  def reindex_command; end
  def set_aggregations(payload, filters, post_filters); end
  def set_boost_by(multiply_filters, custom_filters); end
  def set_boost_by_distance(custom_filters); end
  def set_boost_by_indices(payload); end
  def set_boost_by_recency(custom_filters); end
  def set_boost_where(custom_filters); end
  def set_conversions; end
  def set_exclude(field, analyzer); end
  def set_fields; end
  def set_highlights(payload, fields); end
  def set_order(payload); end
  def set_post_filters(payload, post_filters); end
  def set_suggestions(payload, suggest); end
  def term_filters(field, value); end
  def track_total_hits?; end
  def where_filters(where); end
end

module Searchkick::QueryWithInstrumentation
  def execute_search; end
end

class Searchkick::RecordData
  def initialize(index, record); end

  def delete_data; end
  def document_type(ignore_type = T.unsafe(nil)); end
  def index; end
  def index_data; end
  def record; end
  def record_data; end
  def search_id; end
  def update_data(method_name); end

  private

  def cast_big_decimal(obj); end
  def location_value(value); end
  def search_data(method_name = T.unsafe(nil)); end
end

Searchkick::RecordData::TYPE_KEYS = T.let(T.unsafe(nil), Array)

class Searchkick::RecordIndexer
  def initialize(record); end

  def index; end
  def record; end
  def reindex(method_name = T.unsafe(nil), refresh: T.unsafe(nil), mode: T.unsafe(nil)); end

  private

  def queue_escape(value); end
  def reindex_record(method_name); end
end

class Searchkick::ReindexQueue
  def initialize(name); end

  def clear; end
  def length; end
  def name; end
  def push(record_id); end
  def reserve(limit: T.unsafe(nil)); end

  private

  def redis_key; end
  def redis_version; end
  def supports_rpop_with_count?; end
end

class Searchkick::ReindexV2Job < ::ActiveJob::Base
  def perform(klass, id, method_name = T.unsafe(nil), routing: T.unsafe(nil)); end

  class << self
    def queue_name; end
  end
end

Searchkick::ReindexV2Job::RECORD_NOT_FOUND_CLASSES = T.let(T.unsafe(nil), Array)

class Searchkick::Results
  include(::Enumerable)
  extend(::Forwardable)

  def initialize(klass, response, options = T.unsafe(nil)); end

  def [](*args, &block); end
  def aggregations; end
  def aggs; end
  def any?(*args, &block); end
  def clear_scroll; end
  def current_page; end
  def each(*args, &block); end
  def empty?(*args, &block); end
  def entry_name(options = T.unsafe(nil)); end
  def error; end
  def first_page?; end
  def highlights(multiple: T.unsafe(nil)); end
  def hits; end
  def klass; end
  def last_page?; end
  def length(*args, &block); end
  def limit_value; end
  def missing_records; end
  def misspellings?; end
  def model_name; end
  def next_page; end
  def num_pages; end
  def offset; end
  def offset_value; end
  def options; end
  def out_of_range?; end
  def padding; end
  def per_page; end
  def prev_page; end
  def previous_page; end
  def response; end
  def results; end
  def scroll; end
  def scroll_id; end
  def size(*args, &block); end
  def slice(*args, &block); end
  def suggestions; end
  def to_ary(*args, &block); end
  def took; end
  def total_count; end
  def total_entries; end
  def total_pages; end
  def with_highlights(multiple: T.unsafe(nil)); end
  def with_hit; end
  def with_score; end

  private

  def base_field(k); end
  def combine_includes(result, inc); end
  def hit_highlights(hit, multiple: T.unsafe(nil)); end
  def results_query(records, hits); end
  def with_hit_and_missing_records; end
end

module Searchkick::SearchkickWithInstrumentation
  def multi_search(searches); end
end

class Searchkick::UnsupportedVersionError < ::Searchkick::Error
end

Searchkick::VERSION = T.let(T.unsafe(nil), String)

module Searckick
end

class Searckick::Railtie < ::Rails::Railtie
end
