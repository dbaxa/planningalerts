# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rest-client` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module RestClient
  class << self
    def add_before_execution_proc(&proc); end
    def before_execution_procs; end
    def create_log(param); end
    def delete(url, headers = T.unsafe(nil), &block); end
    def get(url, headers = T.unsafe(nil), &block); end
    def head(url, headers = T.unsafe(nil), &block); end
    def log; end
    def log=(log); end
    def options(url, headers = T.unsafe(nil), &block); end
    def patch(url, payload, headers = T.unsafe(nil), &block); end
    def post(url, payload, headers = T.unsafe(nil), &block); end
    def proxy; end
    def proxy=(value); end
    def proxy_set?; end
    def put(url, payload, headers = T.unsafe(nil), &block); end
    def reset_before_execution_procs; end
    def version; end
  end
end

module RestClient::AbstractResponse
  def code; end
  def cookie_jar; end
  def cookies; end
  def description; end
  def duration; end
  def end_time; end
  def follow_get_redirection(&block); end
  def follow_redirection(&block); end
  def headers; end
  def history; end
  def inspect; end
  def log; end
  def log_response; end
  def net_http_res; end
  def raw_headers; end
  def request; end
  def response_set_vars(net_http_res, request, start_time); end
  def return!(&block); end
  def start_time; end
  def to_i; end

  private

  def _follow_redirection(new_args, &block); end
  def check_max_redirects; end
  def exception_with_response; end

  class << self
    def beautify_headers(headers); end
  end
end

class RestClient::Accepted < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::AlreadyReported < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::BadGateway < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::BadRequest < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::BandwidthLimitExceeded < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::BlockedByWindowsParentalControls < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::Conflict < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::Continue < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::Created < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::Exception < ::RuntimeError
  def initialize(response = T.unsafe(nil), initial_response_code = T.unsafe(nil)); end

  def default_message; end
  def http_body; end
  def http_code; end
  def http_headers; end
  def message; end
  def message=(_arg0); end
  def original_exception; end
  def original_exception=(_arg0); end
  def response; end
  def response=(_arg0); end
  def to_s; end
end

class RestClient::ExceptionWithResponse < ::RestClient::Exception
end

module RestClient::Exceptions
end

RestClient::Exceptions::EXCEPTIONS_MAP = T.let(T.unsafe(nil), Hash)

class RestClient::Exceptions::OpenTimeout < ::RestClient::Exceptions::Timeout
  def default_message; end
end

class RestClient::Exceptions::ReadTimeout < ::RestClient::Exceptions::Timeout
  def default_message; end
end

class RestClient::Exceptions::Timeout < ::RestClient::RequestTimeout
  def initialize(message = T.unsafe(nil), original_exception = T.unsafe(nil)); end
end

class RestClient::ExpectationFailed < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::FailedDependency < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::Forbidden < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::Found < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::GatewayTimeout < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::Gone < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::HTTPVersionNotSupported < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::IMUsed < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::ImATeapot < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::InsufficientStorage < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::InternalServerError < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::LengthRequired < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::Locked < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::LoopDetected < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::MethodNotAllowed < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::MovedPermanently < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::MultiStatus < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::MultipleChoices < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::NetworkAuthenticationRequired < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::NoContent < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::NonAuthoritativeInformation < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::NotAcceptable < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::NotExtended < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::NotFound < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::NotImplemented < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::NotModified < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::OK < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::ParamsArray
  include(::Enumerable)

  def initialize(array); end

  def each(*args, &blk); end
  def empty?; end

  private

  def process_input(array); end
  def process_pair(pair); end
end

class RestClient::PartialContent < ::RestClient::RequestFailed
  def default_message; end
end

module RestClient::Payload
  extend(::RestClient::Payload)

  def _has_file?(obj); end
  def generate(params); end
  def has_file?(params); end
end

class RestClient::Payload::Base
  def initialize(params); end

  def build_stream(params); end
  def close; end
  def closed?; end
  def headers; end
  def length; end
  def read(*args); end
  def short_inspect; end
  def size; end
  def to_s; end
  def to_s_inspect; end
end

class RestClient::Payload::Multipart < ::RestClient::Payload::Base
  def boundary; end
  def build_stream(params); end
  def close; end
  def create_file_field(s, k, v); end
  def create_regular_field(s, k, v); end
  def handle_key(key); end
  def headers; end
  def mime_for(path); end
end

RestClient::Payload::Multipart::EOL = T.let(T.unsafe(nil), String)

class RestClient::Payload::Streamed < ::RestClient::Payload::Base
  def build_stream(params = T.unsafe(nil)); end
  def length; end
  def size; end
end

class RestClient::Payload::UrlEncoded < ::RestClient::Payload::Base
  def build_stream(params = T.unsafe(nil)); end
  def headers; end
end

class RestClient::PayloadTooLarge < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::PaymentRequired < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::PermanentRedirect < ::RestClient::RequestFailed
  def default_message; end
end

module RestClient::Platform
  class << self
    def architecture; end
    def default_user_agent; end
    def jruby?; end
    def mac_mri?; end
    def ruby_agent_version; end
    def windows?; end
  end
end

class RestClient::PreconditionFailed < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::PreconditionRequired < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::Processing < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::ProxyAuthenticationRequired < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::RangeNotSatisfiable < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::RawResponse
  include(::RestClient::AbstractResponse)

  def initialize(tempfile, net_http_res, request, start_time = T.unsafe(nil)); end

  def body; end
  def end_time; end
  def file; end
  def inspect; end
  def request; end
  def size; end
  def start_time; end
  def to_s; end
end

class RestClient::Request
  def initialize(args); end

  def args; end
  def cookie_jar; end
  def cookies; end
  def default_headers; end
  def execute(&block); end
  def headers; end
  def inspect; end
  def log; end
  def log_request; end
  def make_cookie_header; end
  def make_headers(user_headers); end
  def max_redirects; end
  def method; end
  def net_http_do_request(http, req, body = T.unsafe(nil), &block); end
  def net_http_object(hostname, port); end
  def net_http_request_class(method); end
  def normalize_url(url); end
  def open_timeout; end
  def password; end
  def payload; end
  def process_cookie_args!(uri, headers, args); end
  def process_url_params(url, headers); end
  def processed_headers; end
  def proxy; end
  def proxy_uri; end
  def raw_response; end
  def read_timeout; end
  def redacted_uri; end
  def redacted_url; end
  def redirection_history; end
  def redirection_history=(_arg0); end
  def ssl_ca_file; end
  def ssl_ca_path; end
  def ssl_cert_store; end
  def ssl_ciphers; end
  def ssl_client_cert; end
  def ssl_client_key; end
  def ssl_opts; end
  def ssl_verify_callback; end
  def ssl_verify_callback_warnings; end
  def ssl_version; end
  def stringify_headers(headers); end
  def uri; end
  def url; end
  def use_ssl?; end
  def user; end
  def verify_ssl; end

  private

  def fetch_body_to_tempfile(http_response); end
  def maybe_convert_extension(ext); end
  def normalize_method(method); end
  def parse_url_with_auth!(url); end
  def parser; end
  def print_verify_callback_warnings; end
  def process_result(res, start_time, tempfile = T.unsafe(nil), &block); end
  def setup_credentials(req); end
  def transmit(uri, req, payload, &block); end

  class << self
    def default_ssl_cert_store; end
    def execute(args, &block); end
  end
end

RestClient::Request::SSLOptionList = T.let(T.unsafe(nil), Array)

RestClient::RequestEntityTooLarge = RestClient::PayloadTooLarge

class RestClient::RequestFailed < ::RestClient::ExceptionWithResponse
  def default_message; end
  def to_s; end
end

class RestClient::RequestHeaderFieldsTooLarge < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::RequestTimeout < ::RestClient::RequestFailed
  def default_message; end
end

RestClient::RequestURITooLong = RestClient::URITooLong

RestClient::RequestedRangeNotSatisfiable = RestClient::RangeNotSatisfiable

class RestClient::ResetContent < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::Resource
  def initialize(url, options = T.unsafe(nil), backwards_compatibility = T.unsafe(nil), &block); end

  def [](suburl, &new_block); end
  def block; end
  def concat_urls(url, suburl); end
  def delete(additional_headers = T.unsafe(nil), &block); end
  def get(additional_headers = T.unsafe(nil), &block); end
  def head(additional_headers = T.unsafe(nil), &block); end
  def headers; end
  def log; end
  def open_timeout; end
  def options; end
  def password; end
  def patch(payload, additional_headers = T.unsafe(nil), &block); end
  def post(payload, additional_headers = T.unsafe(nil), &block); end
  def put(payload, additional_headers = T.unsafe(nil), &block); end
  def read_timeout; end
  def to_s; end
  def url; end
  def user; end
end

RestClient::ResourceNotFound = RestClient::NotFound

class RestClient::Response < ::String
  include(::RestClient::AbstractResponse)

  def body; end
  def inspect; end
  def to_s; end
  def to_str; end

  private

  def body_truncated(length); end

  class << self
    def create(body, net_http_res, request, start_time = T.unsafe(nil)); end
    def fix_encoding(response); end
  end
end

class RestClient::RetryWith < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::SSLCertificateNotVerified < ::RestClient::Exception
  def initialize(message = T.unsafe(nil)); end
end

RestClient::STATUSES = T.let(T.unsafe(nil), Hash)

RestClient::STATUSES_COMPATIBILITY = T.let(T.unsafe(nil), Hash)

class RestClient::SeeOther < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::ServerBrokeConnection < ::RestClient::Exception
  def initialize(message = T.unsafe(nil)); end
end

class RestClient::ServiceUnavailable < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::SwitchProxy < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::SwitchingProtocols < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::TemporaryRedirect < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::TooManyConnectionsFromThisIP < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::TooManyRequests < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::URITooLong < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::Unauthorized < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::UnorderedCollection < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::UnprocessableEntity < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::UnsupportedMediaType < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::UpgradeRequired < ::RestClient::RequestFailed
  def default_message; end
end

class RestClient::UseProxy < ::RestClient::RequestFailed
  def default_message; end
end

module RestClient::Utils
  class << self
    def _cgi_parseparam(s); end
    def cgi_parse_header(line); end
    def deprecated_cgi_parse_header(line); end
    def encode_query_string(object); end
    def escape(string); end
    def flatten_params(object, uri_escape = T.unsafe(nil), parent_key = T.unsafe(nil)); end
    def get_encoding_from_headers(headers); end
  end
end

RestClient::VERSION = T.let(T.unsafe(nil), String)

RestClient::VERSION_INFO = T.let(T.unsafe(nil), Array)

class RestClient::VariantAlsoNegotiates < ::RestClient::RequestFailed
  def default_message; end
end

module RestClient::Windows
end
