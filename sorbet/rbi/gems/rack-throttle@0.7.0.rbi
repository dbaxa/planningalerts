# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rack-throttle` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Rack
  class << self
    def release; end
    def version; end
  end
end

Rack::ADAPTERS = T.let(T.unsafe(nil), Array)
Rack::CACHE_CONTROL = T.let(T.unsafe(nil), String)
Rack::CONTENT_LENGTH = T.let(T.unsafe(nil), String)
Rack::CONTENT_TYPE = T.let(T.unsafe(nil), String)
Rack::DELETE = T.let(T.unsafe(nil), String)
Rack::ETAG = T.let(T.unsafe(nil), String)
Rack::EXPIRES = T.let(T.unsafe(nil), String)
Rack::File = Rack::Files
Rack::GET = T.let(T.unsafe(nil), String)
Rack::HEAD = T.let(T.unsafe(nil), String)
Rack::HTTPS = T.let(T.unsafe(nil), String)
Rack::HTTP_COOKIE = T.let(T.unsafe(nil), String)
Rack::HTTP_HOST = T.let(T.unsafe(nil), String)
Rack::HTTP_PORT = T.let(T.unsafe(nil), String)
Rack::HTTP_VERSION = T.let(T.unsafe(nil), String)
Rack::LINK = T.let(T.unsafe(nil), String)
Rack::OPTIONS = T.let(T.unsafe(nil), String)
Rack::PATCH = T.let(T.unsafe(nil), String)
Rack::PATH_INFO = T.let(T.unsafe(nil), String)
Rack::POST = T.let(T.unsafe(nil), String)
Rack::PUT = T.let(T.unsafe(nil), String)
Rack::QUERY_STRING = T.let(T.unsafe(nil), String)
Rack::RACK_ERRORS = T.let(T.unsafe(nil), String)
Rack::RACK_HIJACK = T.let(T.unsafe(nil), String)
Rack::RACK_HIJACK_IO = T.let(T.unsafe(nil), String)
Rack::RACK_INPUT = T.let(T.unsafe(nil), String)
Rack::RACK_IS_HIJACK = T.let(T.unsafe(nil), String)
Rack::RACK_LOGGER = T.let(T.unsafe(nil), String)
Rack::RACK_METHODOVERRIDE_ORIGINAL_METHOD = T.let(T.unsafe(nil), String)
Rack::RACK_MULTIPART_BUFFER_SIZE = T.let(T.unsafe(nil), String)
Rack::RACK_MULTIPART_TEMPFILE_FACTORY = T.let(T.unsafe(nil), String)
Rack::RACK_MULTIPROCESS = T.let(T.unsafe(nil), String)
Rack::RACK_MULTITHREAD = T.let(T.unsafe(nil), String)
Rack::RACK_RECURSIVE_INCLUDE = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_COOKIE_HASH = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_COOKIE_STRING = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_FORM_HASH = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_FORM_INPUT = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_FORM_VARS = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_QUERY_HASH = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_QUERY_STRING = T.let(T.unsafe(nil), String)
Rack::RACK_RUNONCE = T.let(T.unsafe(nil), String)
Rack::RACK_SESSION = T.let(T.unsafe(nil), String)
Rack::RACK_SESSION_OPTIONS = T.let(T.unsafe(nil), String)
Rack::RACK_SESSION_UNPACKED_COOKIE_DATA = T.let(T.unsafe(nil), String)
Rack::RACK_SHOWSTATUS_DETAIL = T.let(T.unsafe(nil), String)
Rack::RACK_TEMPFILES = T.let(T.unsafe(nil), String)
Rack::RACK_URL_SCHEME = T.let(T.unsafe(nil), String)
Rack::RACK_VERSION = T.let(T.unsafe(nil), String)
Rack::RELEASE = T.let(T.unsafe(nil), String)
Rack::REQUEST_METHOD = T.let(T.unsafe(nil), String)
Rack::REQUEST_PATH = T.let(T.unsafe(nil), String)
Rack::SCRIPT_NAME = T.let(T.unsafe(nil), String)
Rack::SERVER_NAME = T.let(T.unsafe(nil), String)
Rack::SERVER_PORT = T.let(T.unsafe(nil), String)
Rack::SERVER_PROTOCOL = T.let(T.unsafe(nil), String)
Rack::SET_COOKIE = T.let(T.unsafe(nil), String)
Rack::TRACE = T.let(T.unsafe(nil), String)
Rack::TRANSFER_ENCODING = T.let(T.unsafe(nil), String)
module Rack::Throttle; end

class Rack::Throttle::Daily < ::Rack::Throttle::TimeWindow
  def initialize(app, options = T.unsafe(nil)); end

  def max_per_day(request = T.unsafe(nil)); end
  def max_per_window(request = T.unsafe(nil)); end

  protected

  def cache_key(request); end
end

class Rack::Throttle::Hourly < ::Rack::Throttle::TimeWindow
  def initialize(app, options = T.unsafe(nil)); end

  def max_per_hour(request = T.unsafe(nil)); end
  def max_per_window(request = T.unsafe(nil)); end

  protected

  def cache_key(request); end
end

class Rack::Throttle::Interval < ::Rack::Throttle::Limiter
  def initialize(app, options = T.unsafe(nil)); end

  def allowed?(request); end
  def minimum_interval; end
  def retry_after; end
end

class Rack::Throttle::Limiter
  def initialize(app, options = T.unsafe(nil)); end

  def allowed?(request); end
  def app; end
  def blacklisted?(request); end
  def call(env); end
  def options; end
  def whitelisted?(request); end

  protected

  def cache; end
  def cache_get(key, default = T.unsafe(nil)); end
  def cache_has?(key); end
  def cache_key(request); end
  def cache_set(key, value); end
  def client_identifier(request); end
  def http_error(code, message = T.unsafe(nil), headers = T.unsafe(nil)); end
  def http_status(code); end
  def rate_limit_exceeded(request); end
  def request_start_time(request); end
end

class Rack::Throttle::Minute < ::Rack::Throttle::TimeWindow
  def initialize(app, options = T.unsafe(nil)); end

  def max_per_minute(request = T.unsafe(nil)); end
  def max_per_window(request = T.unsafe(nil)); end

  protected

  def cache_key(request); end
end

class Rack::Throttle::Rules < ::Rack::Throttle::TimeWindow
  def initialize(app, options = T.unsafe(nil)); end

  def cache_key(request); end
  def client_identifier(request); end
  def client_identifier_for_rule(request, rule); end
  def default_limit; end
  def ip(request); end
  def ip_whitelisted?(request_ip); end
  def ips; end
  def max_per_window(request); end
  def path_matches?(rule, path); end
  def retry_after; end
  def rule_for(request); end
  def rule_whitelisted?(request); end
  def rules; end
  def time_string; end
  def whitelisted?(request); end
end

class Rack::Throttle::Second < ::Rack::Throttle::TimeWindow
  def initialize(app, options = T.unsafe(nil)); end

  def max_per_second(request = T.unsafe(nil)); end
  def max_per_window(request = T.unsafe(nil)); end

  protected

  def cache_key(request); end
end

class Rack::Throttle::TimeWindow < ::Rack::Throttle::Limiter
  def allowed?(request); end
end

module Rack::Throttle::VERSION
  class << self
    def to_a; end
    def to_s; end
    def to_str; end
  end
end

Rack::Throttle::VERSION::MAJOR = T.let(T.unsafe(nil), Integer)
Rack::Throttle::VERSION::MINOR = T.let(T.unsafe(nil), Integer)
Rack::Throttle::VERSION::STRING = T.let(T.unsafe(nil), String)
Rack::Throttle::VERSION::TINY = T.let(T.unsafe(nil), Integer)
Rack::UNLINK = T.let(T.unsafe(nil), String)
Rack::VERSION = T.let(T.unsafe(nil), Array)
