# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `netrc` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

class Netrc
  def initialize(path, data); end

  def [](k); end
  def []=(k, info); end
  def delete(key); end
  def each(&block); end
  def length; end
  def new_item(m, l, p); end
  def new_item_prefix; end
  def new_item_prefix=(_arg0); end
  def save; end
  def unparse; end

  class << self
    def check_permissions(path); end
    def config; end
    def configure; end
    def default_path; end
    def home_path; end
    def lex(lines); end
    def netrc_filename; end
    def parse(ts); end
    def read(path = T.unsafe(nil)); end
    def skip?(s); end
  end
end

class Netrc::Entry < ::Struct
  def login; end
  def login=(_); end
  def password; end
  def password=(_); end
  def to_ary; end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class Netrc::Error < ::StandardError
end

class Netrc::TokenArray < ::Array
  def readto; end
  def take; end
end

Netrc::VERSION = T.let(T.unsafe(nil), String)
