# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `elasticsearch-transport` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Elasticsearch; end

module Elasticsearch::Loggable
  def log_debug(message); end
  def log_error(message); end
  def log_fatal(message); end
  def log_info(message); end
  def log_warn(message); end
end

Elasticsearch::NOT_ELASTICSEARCH_WARNING = T.let(T.unsafe(nil), String)
Elasticsearch::NOT_SUPPORTED_ELASTICSEARCH_WARNING = T.let(T.unsafe(nil), String)
Elasticsearch::SECURITY_PRIVILEGES_VALIDATION_WARNING = T.let(T.unsafe(nil), String)
module Elasticsearch::Transport; end

class Elasticsearch::Transport::Client
  include ::Elasticsearch::Transport::MetaHeader

  def initialize(arguments = T.unsafe(nil), &block); end

  def perform_request(method, path, params = T.unsafe(nil), body = T.unsafe(nil), headers = T.unsafe(nil)); end
  def transport; end
  def transport=(_arg0); end

  private

  def __auto_detect_adapter; end
  def __encode(api_key); end
  def __extract_hosts(hosts_config); end
  def __parse_host(host); end
  def add_header(header); end
  def extract_cloud_creds(arguments); end
  def set_api_key; end
  def set_compatibility_header; end
end

Elasticsearch::Transport::Client::DEFAULT_CLOUD_PORT = T.let(T.unsafe(nil), Integer)
Elasticsearch::Transport::Client::DEFAULT_HOST = T.let(T.unsafe(nil), String)
Elasticsearch::Transport::Client::DEFAULT_LOGGER = T.let(T.unsafe(nil), Proc)
Elasticsearch::Transport::Client::DEFAULT_PORT = T.let(T.unsafe(nil), Integer)
Elasticsearch::Transport::Client::DEFAULT_TRACER = T.let(T.unsafe(nil), Proc)
Elasticsearch::Transport::Client::DEFAULT_TRANSPORT_CLASS = Elasticsearch::Transport::Transport::HTTP::Faraday

module Elasticsearch::Transport::MetaHeader
  def called_from?(service); end
  def client_meta_version(version); end
  def elasticsearch?; end
  def enterprise_search?; end
  def meta_header_adapter; end
  def meta_header_engine; end
  def meta_header_service_version; end
  def set_meta_header; end
end

class Elasticsearch::Transport::Redacted < ::Hash
  def initialize(elements = T.unsafe(nil)); end

  def inspect; end
  def to_s; end

  private

  def redact(k, v, method); end
  def redacted_string(method); end
end

Elasticsearch::Transport::Redacted::SENSITIVE_KEYS = T.let(T.unsafe(nil), Array)
Elasticsearch::Transport::Redacted::STRING_REPLACEMENT = T.let(T.unsafe(nil), String)
module Elasticsearch::Transport::Transport; end

module Elasticsearch::Transport::Transport::Base
  include ::Elasticsearch::Loggable

  def initialize(arguments = T.unsafe(nil), &block); end

  def __build_connection(host, options = T.unsafe(nil), block = T.unsafe(nil)); end
  def __build_connections; end
  def __close_connections; end
  def __convert_to_json(o = T.unsafe(nil), options = T.unsafe(nil)); end
  def __full_url(host); end
  def __log_response(method, path, params, body, url, response, json, took, duration); end
  def __raise_transport_error(response); end
  def __rebuild_connections(arguments = T.unsafe(nil)); end
  def __trace(method, path, params, headers, body, url, response, json, took, duration); end
  def connections; end
  def counter; end
  def get_connection(options = T.unsafe(nil)); end
  def host_unreachable_exceptions; end
  def hosts; end
  def last_request_at; end
  def logger; end
  def logger=(_arg0); end
  def options; end
  def perform_request(method, path, params = T.unsafe(nil), body = T.unsafe(nil), headers = T.unsafe(nil), opts = T.unsafe(nil), &block); end
  def protocol; end
  def reload_after; end
  def reload_after=(_arg0); end
  def reload_connections; end
  def reload_connections!; end
  def reload_connections=(_arg0); end
  def resurrect_after; end
  def resurrect_after=(_arg0); end
  def resurrect_dead_connections!; end
  def serializer; end
  def serializer=(_arg0); end
  def sniffer; end
  def sniffer=(_arg0); end
  def tracer; end
  def tracer=(_arg0); end

  private

  def apply_headers(client, options); end
  def connection_headers(connection); end
  def decompress_response(body); end
  def find_value(hash, regex); end
  def gzipped?(body); end
  def use_compression?; end
  def user_agent_header(client); end
  def warnings(warning); end
end

Elasticsearch::Transport::Transport::Base::ACCEPT_ENCODING = T.let(T.unsafe(nil), String)
Elasticsearch::Transport::Transport::Base::CONTENT_TYPE_REGEX = T.let(T.unsafe(nil), Regexp)
Elasticsearch::Transport::Transport::Base::CONTENT_TYPE_STR = T.let(T.unsafe(nil), String)
Elasticsearch::Transport::Transport::Base::DEFAULT_CONTENT_TYPE = T.let(T.unsafe(nil), String)
Elasticsearch::Transport::Transport::Base::DEFAULT_MAX_RETRIES = T.let(T.unsafe(nil), Integer)
Elasticsearch::Transport::Transport::Base::DEFAULT_PORT = T.let(T.unsafe(nil), Integer)
Elasticsearch::Transport::Transport::Base::DEFAULT_PROTOCOL = T.let(T.unsafe(nil), String)
Elasticsearch::Transport::Transport::Base::DEFAULT_RELOAD_AFTER = T.let(T.unsafe(nil), Integer)
Elasticsearch::Transport::Transport::Base::DEFAULT_RESURRECT_AFTER = T.let(T.unsafe(nil), Integer)
Elasticsearch::Transport::Transport::Base::DEFAULT_SERIALIZER_CLASS = Elasticsearch::Transport::Transport::Serializer::MultiJson
Elasticsearch::Transport::Transport::Base::GZIP = T.let(T.unsafe(nil), String)
Elasticsearch::Transport::Transport::Base::GZIP_FIRST_TWO_BYTES = T.let(T.unsafe(nil), String)
Elasticsearch::Transport::Transport::Base::HEX_STRING_DIRECTIVE = T.let(T.unsafe(nil), String)
Elasticsearch::Transport::Transport::Base::RUBY_ENCODING = T.let(T.unsafe(nil), TrueClass)
Elasticsearch::Transport::Transport::Base::SANITIZED_PASSWORD = T.let(T.unsafe(nil), String)
Elasticsearch::Transport::Transport::Base::USER_AGENT_REGEX = T.let(T.unsafe(nil), Regexp)
Elasticsearch::Transport::Transport::Base::USER_AGENT_STR = T.let(T.unsafe(nil), String)
module Elasticsearch::Transport::Transport::Connections; end

class Elasticsearch::Transport::Transport::Connections::Collection
  include ::Enumerable

  def initialize(arguments = T.unsafe(nil)); end

  def [](*args); end
  def add(connections); end
  def alive; end
  def all; end
  def connections; end
  def dead; end
  def each(&block); end
  def get_connection(options = T.unsafe(nil)); end
  def hosts; end
  def remove(connections); end
  def selector; end
  def size; end
  def slice(*args); end
end

Elasticsearch::Transport::Transport::Connections::Collection::DEFAULT_SELECTOR = Elasticsearch::Transport::Transport::Connections::Selector::RoundRobin

class Elasticsearch::Transport::Transport::Connections::Connection
  def initialize(arguments = T.unsafe(nil)); end

  def ==(other); end
  def alive!; end
  def connection; end
  def dead!; end
  def dead?; end
  def dead_since; end
  def failures; end
  def full_path(path, params = T.unsafe(nil)); end
  def full_url(path, params = T.unsafe(nil)); end
  def healthy!; end
  def host; end
  def options; end
  def resurrect!; end
  def resurrectable?; end
  def to_s; end
end

Elasticsearch::Transport::Transport::Connections::Connection::DEFAULT_RESURRECT_TIMEOUT = T.let(T.unsafe(nil), Integer)
module Elasticsearch::Transport::Transport::Connections::Selector; end

module Elasticsearch::Transport::Transport::Connections::Selector::Base
  def initialize(arguments = T.unsafe(nil)); end

  def connections; end
  def select(options = T.unsafe(nil)); end
end

class Elasticsearch::Transport::Transport::Connections::Selector::Random
  include ::Elasticsearch::Transport::Transport::Connections::Selector::Base

  def select(options = T.unsafe(nil)); end
end

class Elasticsearch::Transport::Transport::Connections::Selector::RoundRobin
  include ::Elasticsearch::Transport::Transport::Connections::Selector::Base

  def initialize(arguments = T.unsafe(nil)); end

  def select(options = T.unsafe(nil)); end
end

Elasticsearch::Transport::Transport::ERRORS = T.let(T.unsafe(nil), Hash)
class Elasticsearch::Transport::Transport::Error < ::StandardError; end
module Elasticsearch::Transport::Transport::Errors; end
class Elasticsearch::Transport::Transport::Errors::BadGateway < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::BadRequest < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::BlockedByWindowsParentalControls < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::ClientClosedRequest < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::Conflict < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::ExpectationFailed < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::Forbidden < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::Found < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::GatewayTimeout < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::Gone < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::HTTPToHTTPS < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::HTTPVersionNotSupported < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::ImATeapot < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::InternalServerError < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::LengthRequired < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::MethodNotAllowed < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::MovedPermanently < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::MultipleChoices < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::NotAcceptable < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::NotExtended < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::NotFound < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::NotImplemented < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::NotModified < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::PaymentRequired < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::PermanentRedirect < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::PreconditionFailed < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::ProxyAuthenticationRequired < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::RequestEntityTooLarge < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::RequestHeaderTooLarge < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::RequestTimeout < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::RequestURITooLong < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::RequestedRangeNotSatisfiable < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::SeeOther < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::ServiceUnavailable < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::TemporaryRedirect < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::TooManyConnectionsFromThisIP < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::TooManyRequests < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::Unauthorized < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::UnsupportedMediaType < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::UpgradeRequired < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::UseProxy < ::Elasticsearch::Transport::Transport::ServerError; end
class Elasticsearch::Transport::Transport::Errors::VariantAlsoNegotiates < ::Elasticsearch::Transport::Transport::ServerError; end
module Elasticsearch::Transport::Transport::HTTP; end

class Elasticsearch::Transport::Transport::HTTP::Faraday
  include ::Elasticsearch::Loggable
  include ::Elasticsearch::Transport::Transport::Base

  def __build_connection(host, options = T.unsafe(nil), block = T.unsafe(nil)); end
  def host_unreachable_exceptions; end
  def perform_request(method, path, params = T.unsafe(nil), body = T.unsafe(nil), headers = T.unsafe(nil), opts = T.unsafe(nil)); end

  private

  def user_agent_header(client); end
end

Elasticsearch::Transport::Transport::HTTP_STATUSES = T.let(T.unsafe(nil), Hash)

class Elasticsearch::Transport::Transport::Response
  def initialize(status, body, headers = T.unsafe(nil)); end

  def body; end
  def headers; end
  def status; end
end

module Elasticsearch::Transport::Transport::Serializer; end

module Elasticsearch::Transport::Transport::Serializer::Base
  def initialize(transport = T.unsafe(nil)); end
end

class Elasticsearch::Transport::Transport::Serializer::MultiJson
  include ::Elasticsearch::Transport::Transport::Serializer::Base

  def dump(object, options = T.unsafe(nil)); end
  def load(string, options = T.unsafe(nil)); end
end

class Elasticsearch::Transport::Transport::ServerError < ::Elasticsearch::Transport::Transport::Error; end

class Elasticsearch::Transport::Transport::Sniffer
  def initialize(transport); end

  def hosts; end
  def timeout; end
  def timeout=(_arg0); end
  def transport; end

  private

  def parse_address_port(publish_address); end
  def parse_publish_address(publish_address); end
  def perform_sniff_request; end
end

Elasticsearch::Transport::Transport::Sniffer::PROTOCOL = T.let(T.unsafe(nil), String)
class Elasticsearch::Transport::Transport::SnifferTimeoutError < ::Timeout::Error; end
Elasticsearch::Transport::VERSION = T.let(T.unsafe(nil), String)
Elasticsearch::VERSION = T.let(T.unsafe(nil), String)
Elasticsearch::YOU_KNOW_FOR_SEARCH = T.let(T.unsafe(nil), String)
