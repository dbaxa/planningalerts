# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `http-parser` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

class FFI::Function < ::FFI::Pointer
  def initialize(*_arg0); end

  def attach(_arg0, _arg1); end
  def autorelease; end
  def autorelease=(_arg0); end
  def autorelease?; end
  def call(*_arg0); end
  def free; end

  private

  def initialize_copy(_arg0); end
end

module HttpParser
  extend ::FFI::Library

  def err_desc(*_arg0); end
  def err_name(*_arg0); end
  def http_body_is_final(*_arg0); end
  def http_parser_execute(*_arg0); end
  def http_parser_init(*_arg0); end
  def http_should_keep_alive(*_arg0); end

  class << self
    def err_desc(*_arg0); end
    def err_name(*_arg0); end
    def http_body_is_final(*_arg0); end
    def http_parser_execute(*_arg0); end
    def http_parser_init(*_arg0); end
    def http_should_keep_alive(*_arg0); end
  end
end

HttpParser::ERRORS = T.let(T.unsafe(nil), Hash)
class HttpParser::Error < ::StandardError; end
class HttpParser::Error::CALLBACK < ::HttpParser::Error; end
class HttpParser::Error::CLOSED_CONNECTION < ::HttpParser::Error; end
class HttpParser::Error::HEADER_OVERFLOW < ::HttpParser::Error; end
class HttpParser::Error::INVALID_CHUNK_SIZE < ::HttpParser::Error; end
class HttpParser::Error::INVALID_CONSTANT < ::HttpParser::Error; end
class HttpParser::Error::INVALID_CONTENT_LENGTH < ::HttpParser::Error; end
class HttpParser::Error::INVALID_EOF_STATE < ::HttpParser::Error; end
class HttpParser::Error::INVALID_FRAGMENT < ::HttpParser::Error; end
class HttpParser::Error::INVALID_HEADER_TOKEN < ::HttpParser::Error; end
class HttpParser::Error::INVALID_HOST < ::HttpParser::Error; end
class HttpParser::Error::INVALID_INTERNAL_STATE < ::HttpParser::Error; end
class HttpParser::Error::INVALID_METHOD < ::HttpParser::Error; end
class HttpParser::Error::INVALID_PATH < ::HttpParser::Error; end
class HttpParser::Error::INVALID_PORT < ::HttpParser::Error; end
class HttpParser::Error::INVALID_QUERY_STRING < ::HttpParser::Error; end
class HttpParser::Error::INVALID_STATUS < ::HttpParser::Error; end
class HttpParser::Error::INVALID_URL < ::HttpParser::Error; end
class HttpParser::Error::INVALID_VERSION < ::HttpParser::Error; end
class HttpParser::Error::LF_EXPECTED < ::HttpParser::Error; end
class HttpParser::Error::OK < ::HttpParser::Error; end
class HttpParser::Error::PAUSED < ::HttpParser::Error; end
class HttpParser::Error::STRICT < ::HttpParser::Error; end
class HttpParser::Error::UNKNOWN < ::HttpParser::Error; end
HttpParser::FLAG = T.let(T.unsafe(nil), Hash)
class HttpParser::FieldData < ::FFI::Struct; end
HttpParser::HTTP_MAX_HEADER_SIZE = T.let(T.unsafe(nil), Integer)
class HttpParser::HttpParserUrl < ::FFI::Struct; end

class HttpParser::Instance < ::FFI::Struct
  def initialize(ptr = T.unsafe(nil)); end

  def data; end
  def error; end
  def error!; end
  def error?; end
  def final_chunk?; end
  def flags; end
  def http_major; end
  def http_method; end
  def http_minor; end
  def http_status; end
  def http_version; end
  def keep_alive?; end
  def reset!(new_type = T.unsafe(nil)); end
  def stop!; end
  def type; end
  def type=(new_type); end
  def upgrade?; end
end

HttpParser::METHODS = T.let(T.unsafe(nil), FFI::Enum)

class HttpParser::Parser
  def initialize(callback_obj = T.unsafe(nil)); end

  def on_body(&block); end
  def on_chunk_complete(&block); end
  def on_chunk_header(&block); end
  def on_header_field(&block); end
  def on_header_value(&block); end
  def on_headers_complete(&block); end
  def on_message_begin(&block); end
  def on_message_complete(&block); end
  def on_status(&block); end
  def on_url(&block); end
  def parse(inst, data); end

  class << self
    def new_instance(&block); end
  end
end

HttpParser::Parser::CALLBACKS = T.let(T.unsafe(nil), Array)

class HttpParser::Parser::Callback < ::FFI::Function
  class << self
    def new(&block); end
  end
end

class HttpParser::Parser::DataCallback < ::FFI::Function
  class << self
    def new(&block); end
  end
end

class HttpParser::Settings < ::FFI::Struct; end
HttpParser::TYPES = T.let(T.unsafe(nil), FFI::Enum)
HttpParser::UrlFields = T.let(T.unsafe(nil), FFI::Enum)
