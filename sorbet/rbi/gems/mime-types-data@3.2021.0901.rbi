# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `mime-types-data` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module MIME
end

class MIME::Types
  include(::Enumerable)
  extend(::Enumerable)

  def initialize; end

  def [](type_id, complete: T.unsafe(nil), registered: T.unsafe(nil)); end
  def add(*types); end
  def add_type(type, quiet = T.unsafe(nil)); end
  def count; end
  def each; end
  def inspect; end
  def of(filename); end
  def type_for(filename); end

  private

  def add_type_variant!(mime_type); end
  def index_extensions!(mime_type); end
  def match(pattern); end
  def prune_matches(matches, complete, registered); end
  def reindex_extensions!(mime_type); end

  class << self
    def [](type_id, complete: T.unsafe(nil), registered: T.unsafe(nil)); end
    def add(*types); end
    def count; end
    def each; end
    def logger; end
    def logger=(_arg0); end
    def new(*_arg0); end
    def of(filename); end
    def type_for(filename); end

    private

    def __instances__; end
    def __types__; end
    def lazy_load?; end
    def load_default_mime_types(mode = T.unsafe(nil)); end
    def load_mode; end
    def reindex_extensions(type); end
  end
end

class MIME::Types::Cache < ::Struct
  def data; end
  def data=(_); end
  def version; end
  def version=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def load(cache_file = T.unsafe(nil)); end
    def members; end
    def new(*_arg0); end
    def save(types = T.unsafe(nil), cache_file = T.unsafe(nil)); end
  end
end

module MIME::Types::Data
end

MIME::Types::Data::PATH = T.let(T.unsafe(nil), String)

MIME::Types::Data::VERSION = T.let(T.unsafe(nil), String)

MIME::Types::VERSION = T.let(T.unsafe(nil), String)
