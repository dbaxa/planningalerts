# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rabl` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module Rabl
  class << self
    def configuration; end
    def configure(&block); end
    def register!; end
    def render(object, source, options = T.unsafe(nil)); end
    def reset_configuration!; end
    def reset_source_cache!; end
    def source_cache(file, view_path, &block); end
  end
end

class Rabl::Builder
  include(::Rabl::Helpers)
  include(::Rabl::Sources)
  include(::Rabl::Partials)

  def initialize(object, settings = T.unsafe(nil), options = T.unsafe(nil)); end

  def engines; end
  def replace_engine(engine, value); end
  def to_hash(object = T.unsafe(nil), settings = T.unsafe(nil), options = T.unsafe(nil)); end

  protected

  def attribute(name, options = T.unsafe(nil)); end
  def attributes(name, options = T.unsafe(nil)); end
  def call_condition_proc(condition, object); end
  def child(data, options = T.unsafe(nil), &block); end
  def code(name, options = T.unsafe(nil), &block); end
  def compile_settings(type); end
  def deep_replace_empty_string_values(hash); end
  def deep_replace_nil_values(hash); end
  def extends(file, options = T.unsafe(nil), &block); end
  def glue(data, options = T.unsafe(nil), &block); end
  def merge_engines_into_result; end
  def node(name, options = T.unsafe(nil), &block); end
  def remove_nil_values; end
  def replace_empty_string_values; end
  def replace_nil_values; end
  def resolve_condition(options); end

  private

  def attribute_present?(name); end
  def cache_results(&block); end
  def create_key(name); end
  def request_format; end
end

Rabl::Builder::SETTING_TYPES = T.let(T.unsafe(nil), Hash)

class Rabl::CacheEngine
  def fetch(key, cache_options, &block); end
  def read_multi(*keys); end
  def write(key, value, options = T.unsafe(nil)); end
end

class Rabl::Configuration
  def initialize; end

  def [](option); end
  def bson_check_keys; end
  def bson_check_keys=(_arg0); end
  def bson_engine; end
  def bson_engine=(_arg0); end
  def bson_move_id; end
  def bson_move_id=(_arg0); end
  def cache_all_output; end
  def cache_all_output=(_arg0); end
  def cache_engine; end
  def cache_engine=(_arg0); end
  def cache_sources; end
  def cache_sources=(_arg0); end
  def camelize_keys; end
  def camelize_keys=(_arg0); end
  def default_xml_options; end
  def enable_json_callbacks; end
  def enable_json_callbacks=(_arg0); end
  def escape_all_output; end
  def escape_all_output=(_arg0); end
  def exclude_empty_values_in_collections; end
  def exclude_empty_values_in_collections=(_arg0); end
  def exclude_nil_values; end
  def exclude_nil_values=(_arg0); end
  def include_bson_root; end
  def include_bson_root=(_arg0); end
  def include_child_root; end
  def include_child_root=(_arg0); end
  def include_json_root; end
  def include_json_root=(_arg0); end
  def include_msgpack_root; end
  def include_msgpack_root=(_arg0); end
  def include_plist_root; end
  def include_plist_root=(_arg0); end
  def include_xml_root; end
  def include_xml_root=(_arg0); end
  def json_engine; end
  def json_engine=(_arg0); end
  def msgpack_engine; end
  def msgpack_engine=(_arg0); end
  def perform_caching; end
  def perform_caching=(_arg0); end
  def plist_engine; end
  def plist_engine=(_arg0); end
  def raise_on_missing_attribute; end
  def raise_on_missing_attribute=(_arg0); end
  def replace_empty_string_values_with_nil_values; end
  def replace_empty_string_values_with_nil_values=(_arg0); end
  def replace_nil_values_with_empty_strings; end
  def replace_nil_values_with_empty_strings=(_arg0); end
  def use_read_multi; end
  def use_read_multi=(_arg0); end
  def view_paths; end
  def view_paths=(_arg0); end
  def xml_options=(_arg0); end
end

Rabl::Configuration::DEFAULT_XML_OPTIONS = T.let(T.unsafe(nil), Hash)

class Rabl::Engine
  include(::Rabl::Helpers)
  include(::Rabl::Sources)
  include(::Rabl::Partials)
  include(::Rabl::Helpers::Escaper)

  def initialize(source, options = T.unsafe(nil)); end

  def apply(context_scope, locals, &block); end
  def attribute(*args); end
  def attributes(*args); end
  def cache(key = T.unsafe(nil), options = T.unsafe(nil)); end
  def cache_key; end
  def cache_read_on_render=(read); end
  def cache_read_on_render?; end
  def child(data, options = T.unsafe(nil), &block); end
  def code(name = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def collection(data, options = T.unsafe(nil)); end
  def extends(file, options = T.unsafe(nil), &block); end
  def glue(data, options = T.unsafe(nil), &block); end
  def helper(*klasses); end
  def helpers(*klasses); end
  def node(name = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def object(template_data); end
  def partial(file, options = T.unsafe(nil), &block); end
  def render(context_scope = T.unsafe(nil), locals = T.unsafe(nil), &block); end
  def root_name; end
  def root_object; end
  def source=(source); end
  def to_bson(options = T.unsafe(nil)); end
  def to_dumpable(options = T.unsafe(nil)); end
  def to_hash(options = T.unsafe(nil)); end
  def to_json(options = T.unsafe(nil)); end
  def to_mpac(options = T.unsafe(nil)); end
  def to_msgpack(options = T.unsafe(nil)); end
  def to_plist(options = T.unsafe(nil)); end
  def to_xml(options = T.unsafe(nil)); end

  protected

  def cache_results(&block); end
  def copy_instance_variables_from(object, exclude = T.unsafe(nil)); end
  def default_object; end
  def digestor_available?; end
  def eval_source(locals, &block); end
  def format_json(json_output); end
  def method_missing(name, *args, &block); end
  def request_format; end
  def request_params; end
  def reset_options!; end
  def reset_settings!; end
  def respond_to?(name, include_private = T.unsafe(nil)); end
  def set_instance_variables!(context_scope, locals); end
  def set_locals(locals); end
end

Rabl::Engine::FORMATS = T.let(T.unsafe(nil), Array)

module Rabl::Helpers
  def collection_root_name; end
  def context_scope; end
  def data_name(data_token); end
  def data_object(data); end
  def data_object_attribute(data); end
  def determine_object_root(data_token, data_name = T.unsafe(nil), include_root = T.unsafe(nil)); end
  def fetch_result_from_cache(cache_key, cache_options = T.unsafe(nil), &block); end
  def is_collection?(obj, follow_symbols = T.unsafe(nil)); end
  def is_name_value?(val); end
  def is_object?(obj, follow_symbols = T.unsafe(nil)); end
  def object_root_name; end
  def object_to_engine(object, options = T.unsafe(nil), &block); end
  def template_cache_configured?; end
  def view_path; end
  def write_result_to_cache(cache_key, cache_options = T.unsafe(nil), &block); end
end

module Rabl::Helpers::Escaper
  def escape_output(response); end
  def escape_value(value); end
end

class Rabl::MultiBuilder
  include(::Rabl::Helpers)

  def initialize(data, settings = T.unsafe(nil), options = T.unsafe(nil)); end

  def to_a; end

  private

  def cache_key_for(engine); end
  def disable_cache_read_on_render(engine); end
  def generate_builders; end
  def map_cache_key_to_engine(engine); end
  def map_engines_to_builders; end
  def read_cache_results; end
  def replace_engines_with_cache_results; end
end

module Rabl::Partials
  include(::Rabl::Helpers)
  include(::Rabl::Sources)

  def partial_as_engine(file, options = T.unsafe(nil), &block); end
end

class Rabl::Renderer
  def initialize(source, object = T.unsafe(nil), options = T.unsafe(nil)); end

  def object; end
  def options; end
  def render(context_scope = T.unsafe(nil)); end

  protected

  def engine; end
  def object_model_name; end
  def process_source(source); end
  def set_object_instance_variable; end

  class << self
    def bson(object, source, options = T.unsafe(nil)); end
    def json(object, source, options = T.unsafe(nil)); end
    def msgpack(object, source, options = T.unsafe(nil)); end
    def plist(object, source, options = T.unsafe(nil)); end
    def xml(object, source, options = T.unsafe(nil)); end
  end
end

module Rabl::Sources
  include(::Rabl::Helpers)

  def fetch_source(file, options = T.unsafe(nil)); end

  private

  def fetch_manual_template(view_path, file); end
  def fetch_padrino_source(file, options = T.unsafe(nil)); end
  def fetch_rails_source(file, options = T.unsafe(nil)); end
  def fetch_sinatra_source(file, options = T.unsafe(nil)); end
  def partialized(file); end
end

Rabl::VERSION = T.let(T.unsafe(nil), String)
