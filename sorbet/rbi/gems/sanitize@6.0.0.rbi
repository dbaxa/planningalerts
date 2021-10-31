# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sanitize` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

class Sanitize
  def initialize(config = T.unsafe(nil)); end

  def clean(html); end
  def clean_document(html); end
  def clean_node!(node); end
  def config; end
  def document(html); end
  def fragment(html); end
  def node!(node); end

  private

  def preprocess(html); end
  def to_html(node); end
  def transform_node!(node, node_allowlist); end
  def traverse(node, &block); end

  class << self
    def clean(html, config = T.unsafe(nil)); end
    def clean_document(html, config = T.unsafe(nil)); end
    def clean_node!(node, config = T.unsafe(nil)); end
    def document(html, config = T.unsafe(nil)); end
    def fragment(html, config = T.unsafe(nil)); end
    def node!(node, config = T.unsafe(nil)); end
  end
end

class Sanitize::CSS
  def initialize(config = T.unsafe(nil)); end

  def config; end
  def properties(css); end
  def stylesheet(css); end
  def tree!(tree); end

  protected

  def at_rule!(rule); end
  def import_url_allowed?(rule); end
  def property!(prop); end
  def valid_url?(node); end

  class << self
    def properties(css, config = T.unsafe(nil)); end
    def stylesheet(css, config = T.unsafe(nil)); end
    def tree!(tree, config = T.unsafe(nil)); end
  end
end

module Sanitize::Config
  class << self
    def freeze_config(config); end
    def merge(config, other_config = T.unsafe(nil)); end

    private

    def can_dupe?(value); end
  end
end

Sanitize::Config::BASIC = T.let(T.unsafe(nil), Hash)
Sanitize::Config::DEFAULT = T.let(T.unsafe(nil), Hash)
Sanitize::Config::RELAXED = T.let(T.unsafe(nil), Hash)
Sanitize::Config::RESTRICTED = T.let(T.unsafe(nil), Hash)
class Sanitize::Error < ::StandardError; end
Sanitize::REGEX_HTML_CONTROL_CHARACTERS = T.let(T.unsafe(nil), Regexp)
Sanitize::REGEX_HTML_NON_CHARACTERS = T.let(T.unsafe(nil), Regexp)
Sanitize::REGEX_PROTOCOL = T.let(T.unsafe(nil), Regexp)
Sanitize::REGEX_UNSUITABLE_CHARS = T.let(T.unsafe(nil), Regexp)
module Sanitize::Transformers; end
module Sanitize::Transformers::CSS; end

class Sanitize::Transformers::CSS::CleanAttribute
  def initialize(sanitizer_or_config); end

  def call(env); end
end

class Sanitize::Transformers::CSS::CleanElement
  def initialize(sanitizer_or_config); end

  def call(env); end
end

Sanitize::Transformers::CleanCDATA = T.let(T.unsafe(nil), Proc)
Sanitize::Transformers::CleanComment = T.let(T.unsafe(nil), Proc)
Sanitize::Transformers::CleanDoctype = T.let(T.unsafe(nil), Proc)

class Sanitize::Transformers::CleanElement
  def initialize(config); end

  def call(env); end
end

Sanitize::Transformers::CleanElement::REGEX_DATA_ATTR = T.let(T.unsafe(nil), Regexp)
Sanitize::Transformers::CleanElement::UNSAFE_LIBXML_ATTRS_A = T.let(T.unsafe(nil), Set)
Sanitize::Transformers::CleanElement::UNSAFE_LIBXML_ATTRS_GLOBAL = T.let(T.unsafe(nil), Set)
Sanitize::Transformers::CleanElement::UNSAFE_LIBXML_ESCAPE_CHARS = T.let(T.unsafe(nil), Hash)
Sanitize::Transformers::CleanElement::UNSAFE_LIBXML_ESCAPE_REGEX = T.let(T.unsafe(nil), Regexp)
Sanitize::VERSION = T.let(T.unsafe(nil), String)
