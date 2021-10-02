# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sawyer` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module Sawyer
end

class Sawyer::Agent
  def initialize(endpoint, options = T.unsafe(nil)); end

  def allow_undefined_methods; end
  def allow_undefined_methods=(_arg0); end
  def allow_undefined_methods?; end
  def call(method, url, data = T.unsafe(nil), options = T.unsafe(nil)); end
  def decode_body(str); end
  def encode_body(data); end
  def expand_url(url, options = T.unsafe(nil)); end
  def inspect; end
  def links_parser; end
  def links_parser=(_arg0); end
  def marshal_dump; end
  def marshal_load(dumped); end
  def parse_links(data); end
  def rels; end
  def root; end
  def start; end
  def to_yaml_properties; end

  class << self
    def decode(data); end
    def encode(data); end
    def serializer; end
    def serializer=(_arg0); end
  end
end

Sawyer::Agent::NO_BODY = T.let(T.unsafe(nil), Set)

class Sawyer::Error < ::StandardError
end

module Sawyer::LinkParsers
end

class Sawyer::LinkParsers::Hal
  def parse(data); end
end

class Sawyer::LinkParsers::Simple
  def parse(data); end
end

Sawyer::LinkParsers::Simple::LINK_REGEX = T.let(T.unsafe(nil), Regexp)

class Sawyer::Relation
  def initialize(agent, name, href, method = T.unsafe(nil)); end

  def agent; end
  def available_methods; end
  def call(data = T.unsafe(nil), options = T.unsafe(nil)); end
  def delete(data = T.unsafe(nil), options = T.unsafe(nil)); end
  def get(options = T.unsafe(nil)); end
  def head(options = T.unsafe(nil)); end
  def href_template; end
  def inspect; end
  def method; end
  def name; end
  def options(data = T.unsafe(nil), opt = T.unsafe(nil)); end
  def patch(data = T.unsafe(nil), options = T.unsafe(nil)); end
  def post(data = T.unsafe(nil), options = T.unsafe(nil)); end
  def put(data = T.unsafe(nil), options = T.unsafe(nil)); end

  class << self
    def from_link(agent, name, options); end
    def from_links(agent, index, rels = T.unsafe(nil)); end
  end
end

class Sawyer::Relation::Map
  def initialize; end

  def <<(rel); end
  def [](key); end
  def inspect; end
  def keys; end
  def size; end
  def to_h; end
  def to_hash; end
end

class Sawyer::Resource
  include(::Enumerable)

  def initialize(agent, data = T.unsafe(nil)); end

  def [](method); end
  def []=(method, value); end
  def _agent; end
  def _fields; end
  def _rels; end
  def attrs; end
  def each(&block); end
  def inspect; end
  def key?(key); end
  def marshal_dump; end
  def marshal_load(dumped); end
  def method_missing(method, *args); end
  def process_value(value); end
  def to_attrs; end
  def to_h; end
  def to_hash; end
  def to_yaml_properties; end

  class << self
    def attr_accessor(*attrs); end
  end
end

Sawyer::Resource::ATTR_PREDICATE = T.let(T.unsafe(nil), String)

Sawyer::Resource::ATTR_SETTER = T.let(T.unsafe(nil), String)

Sawyer::Resource::SPECIAL_METHODS = T.let(T.unsafe(nil), Set)

class Sawyer::Response
  def initialize(agent, res, options = T.unsafe(nil)); end

  def agent; end
  def body; end
  def data; end
  def env; end
  def headers; end
  def inspect; end
  def process_data(data); end
  def process_rels; end
  def rels; end
  def status; end
  def time; end
  def timing; end
end

class Sawyer::Serializer
  def initialize(format, dump_method_name = T.unsafe(nil), load_method_name = T.unsafe(nil)); end

  def decode(data); end
  def decode_hash(hash); end
  def decode_hash_value(key, value); end
  def decode_object(data); end
  def dump(data); end
  def encode(data); end
  def encode_hash(hash); end
  def encode_object(data); end
  def load(data); end
  def time_field?(key, value); end

  class << self
    def any_json; end
    def json; end
    def message_pack; end
    def multi_json; end
    def yajl; end
  end
end

Sawyer::VERSION = T.let(T.unsafe(nil), String)
