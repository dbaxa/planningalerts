# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `http_parser.rb` gem.
# Please instead update this file by running `bin/tapioca gem http_parser.rb`.

# typed: true

module HTTP
  extend ::HTTP::Chainable

  class << self
    def [](headers); end
  end
end

HTTP::CHARSET_RE = T.let(T.unsafe(nil), Regexp)

class HTTP::ContentType < ::Struct
  def charset; end
  def charset=(_); end
  def mime_type; end
  def mime_type=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
    def parse(str); end

    private

    def charset(str); end
    def mime_type(str); end
  end
end

HTTP::MIME_TYPE_RE = T.let(T.unsafe(nil), Regexp)

class HTTP::Parser
  def initialize(*_arg0); end

  def <<(_arg0); end
  def header_value_type; end
  def header_value_type=(_arg0); end
  def headers; end
  def http_major; end
  def http_method; end
  def http_minor; end
  def http_version; end
  def keep_alive?; end
  def on_body=(_arg0); end
  def on_headers_complete=(_arg0); end
  def on_message_begin=(_arg0); end
  def on_message_complete=(_arg0); end
  def request_url; end
  def reset!; end
  def status_code; end
  def upgrade?; end
  def upgrade_data; end

  class << self
    def default_header_value_type; end
    def default_header_value_type=(val); end
    def strict?; end
  end
end

class HTTP::Parser::Error < ::IOError; end
class HTTP::RequestParser < ::HTTP::Parser; end
class HTTP::ResponseParser < ::HTTP::Parser; end
HTTP::VERSION = T.let(T.unsafe(nil), String)
Http = HTTP
