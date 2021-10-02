# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `haml` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module Haml
  class << self
    def init_rails(*args); end
  end
end

module Haml::AttributeBuilder
  class << self
    def build(class_id, obj_ref, is_html, attr_wrapper, escape_attrs, hyphenate_data_attrs, *attributes_hashes); end
    def build_attributes(is_html, attr_wrapper, escape_attrs, hyphenate_data_attrs, attributes = T.unsafe(nil)); end
    def filter_and_join(value, separator); end
    def merge_attributes!(to, from); end
    def merge_values(key, *values); end
    def verify_attribute_names!(attribute_names); end

    private

    def build_data_keys(data_hash, hyphenate, attr_name = T.unsafe(nil)); end
    def flatten_data_attributes(data, key, join_char, seen = T.unsafe(nil)); end
    def merge_value(key, to, from); end
    def parse_object_ref(ref); end
    def underscore(camel_cased_word); end
  end
end

Haml::AttributeBuilder::INVALID_ATTRIBUTE_NAME_REGEX = T.let(T.unsafe(nil), Regexp)

class Haml::AttributeCompiler
  def initialize(options); end

  def compile(attributes, object_ref, dynamic_attributes); end

  private

  def attr_literal(attr); end
  def build_attribute_values(attributes, parsed_hashes); end
  def compile_attribute(key, values); end
  def compile_attribute_values(values); end
  def compile_common_attribute(key, values); end
  def compile_id_or_class_attribute(id_or_class, values); end
  def compile_runtime_build(attributes, object_ref, dynamic_attributes); end
  def frozen_string(str); end
  def group_values_for_sort(values); end
  def merged_value(key, values); end
  def runtime_build(values); end
  def static_build(values); end
  def to_literal(value); end
  def true_value(key); end
  def unique_name; end
end

class Haml::AttributeCompiler::AttributeValue < ::Struct
  def key; end
  def key=(_); end
  def type; end
  def type=(_); end
  def value; end
  def value=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

module Haml::AttributeParser
  class << self
    def available?; end
    def parse(exp); end

    private

    def each_attribute(hash_literal, &block); end
    def each_balanced_tokens(tokens, &block); end
    def expect_string_end!(token); end
    def hash_literal?(exp); end
    def shift_hash_rocket!(tokens); end
    def shift_key!(tokens); end
  end
end

Haml::AttributeParser::IGNORED_TYPES = T.let(T.unsafe(nil), Array)

Haml::AttributeParser::TEXT = T.let(T.unsafe(nil), Integer)

Haml::AttributeParser::TYPE = T.let(T.unsafe(nil), Integer)

class Haml::AttributeParser::UnexpectedKeyError < ::StandardError
end

class Haml::AttributeParser::UnexpectedTokenError < ::StandardError
end

class Haml::Buffer
  include(::Haml::Helpers)
  include(::Haml::Util)

  def initialize(upper = T.unsafe(nil), options = T.unsafe(nil)); end

  def active=(_arg0); end
  def active?; end
  def adjust_tabs(tab_change); end
  def buffer; end
  def buffer=(_arg0); end
  def capture_position; end
  def capture_position=(_arg0); end
  def fix_textareas!(input); end
  def html4?; end
  def html5?; end
  def html?; end
  def options; end
  def options=(_arg0); end
  def push_text(text, tab_change, dont_tab_up); end
  def rstrip!; end
  def tabulation; end
  def tabulation=(val); end
  def toplevel?; end
  def upper; end
  def upper=(_arg0); end
  def xhtml?; end

  private

  def new_encoded_string; end
  def tabs(count = T.unsafe(nil)); end
end

class Haml::Compiler
  include(::Haml::Util)

  def initialize(options); end

  def call(node); end
  def compile(node); end
  def options; end
  def options=(_arg0); end

  private

  def build_script_formatter(text, opts); end
  def compile_comment; end
  def compile_doctype; end
  def compile_filter; end
  def compile_haml_comment; end
  def compile_plain; end
  def compile_root; end
  def compile_script(&block); end
  def compile_silent_script; end
  def compile_tag; end
  def flush_merged_text; end
  def nuke_inner_whitespace?(node); end
  def push_generated_script(text); end
  def push_script(text, opts = T.unsafe(nil)); end
  def push_silent(text, can_suppress = T.unsafe(nil)); end
  def push_temple(temple); end
  def push_text(text); end
  def resolve_newlines; end
  def rstrip_buffer!(index = T.unsafe(nil)); end
  def text_for_doctype; end
end

class Haml::Engine
  include(::Haml::Util)
  extend(::Forwardable)

  def initialize(template, options = T.unsafe(nil)); end

  def compiler; end
  def def_method(object, name, *local_names); end
  def indentation; end
  def indentation=(_arg0); end
  def options; end
  def options=(_arg0); end
  def options_for_buffer; end
  def precompiled(*args, &block); end
  def precompiled_method_return_value(*args, &block); end
  def render(scope = T.unsafe(nil), locals = T.unsafe(nil), &block); end
  def render_proc(scope = T.unsafe(nil), *local_names); end
  def to_html(scope = T.unsafe(nil), locals = T.unsafe(nil), &block); end

  private

  def set_locals(locals, scope, scope_object); end
end

class Haml::Error < ::StandardError
  def initialize(message = T.unsafe(nil), line = T.unsafe(nil)); end

  def line; end

  class << self
    def message(key, *args); end
  end
end

Haml::Error::MESSAGES = T.let(T.unsafe(nil), Hash)

class Haml::Escapable < ::Temple::Filter
  def initialize(*_arg0); end

  def on_dynamic(value); end
  def on_escape(flag, exp); end
  def on_static(value); end

  private

  def escape(value); end
  def escape_code(value); end
  def escape_once(value); end
  def escape_once_code(value); end
end

class Haml::Escapable::EscapeSafeBuffer < ::Struct
  def value; end
  def value=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

module Haml::Filters
  extend(::Haml::Filters)

  def defined; end
  def register_tilt_filter(name, options = T.unsafe(nil)); end
  def remove_filter(name); end
end

module Haml::Filters::Base
  def compile(compiler, text); end
  def internal_compile(*args); end
  def render(_text); end
  def render_with_options(text, _options); end

  class << self
    def included(base); end
  end
end

module Haml::Filters::Cdata
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Cdata)

  def render(text); end
end

module Haml::Filters::Coffee
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Javascript)
  extend(::Haml::Filters::TiltFilter)
  extend(::Haml::Filters::Coffee)

  class << self
    def render_with_options(text, compiler_options); end
  end
end

module Haml::Filters::Css
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Css)

  def render_with_options(text, options); end
end

module Haml::Filters::Erb
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Plain)
  extend(::Haml::Filters::TiltFilter)
  extend(::Haml::Filters::Erb)
  extend(::Haml::Filters::PrecompiledTiltFilter)

  class << self
    def precompiled(text); end
    def render_with_options(text, compiler_options); end
  end
end

module Haml::Filters::Escaped
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Escaped)

  def render(text); end
end

module Haml::Filters::Javascript
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Javascript)

  def render_with_options(text, options); end
end

module Haml::Filters::Less
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Css)
  extend(::Haml::Filters::TiltFilter)
  extend(::Haml::Filters::Less)

  class << self
    def render_with_options(text, compiler_options); end
  end
end

module Haml::Filters::Markdown
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Plain)
  extend(::Haml::Filters::TiltFilter)
  extend(::Haml::Filters::Markdown)

  class << self
    def render_with_options(text, compiler_options); end
  end
end

module Haml::Filters::Plain
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Plain)

  def render(text); end
end

module Haml::Filters::PrecompiledTiltFilter
  def compile(compiler, text); end
  def precompiled(text); end
end

module Haml::Filters::Preserve
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Preserve)

  def render(text); end
end

module Haml::Filters::RailsErb
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Plain)
  extend(::Haml::Filters::TiltFilter)
  extend(::Haml::Filters::RailsErb)
  extend(::Haml::Filters::PrecompiledTiltFilter)

  class << self
    def render_with_options(text, compiler_options); end
  end
end

module Haml::Filters::Ruby
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Ruby)

  def compile(compiler, text); end
end

module Haml::Filters::Sass
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Css)
  extend(::Haml::Filters::TiltFilter)
  extend(::Haml::Filters::Sass)

  class << self
    def render_with_options(text, compiler_options); end
  end
end

module Haml::Filters::Scss
  include(::Haml::Filters::Base)
  extend(::Haml::Filters::Base)
  extend(::Haml::Filters::Css)
  extend(::Haml::Filters::TiltFilter)
  extend(::Haml::Filters::Scss)

  class << self
    def render_with_options(text, compiler_options); end
  end
end

module Haml::Filters::TiltFilter
  extend(::Haml::Filters::TiltFilter)

  def options; end
  def options=(_arg0); end
  def template_class; end
  def template_class=(_arg0); end
  def tilt_extension; end
  def tilt_extension=(_arg0); end

  class << self
    def extended(base); end
  end
end

class Haml::Generator
  include(::Temple::Mixins::CompiledDispatcher)
  include(::Temple::Mixins::Options)
  extend(::Temple::Mixins::ClassOptions)
  extend(::Temple::Mixins::ThreadOptions)

  def call(exp); end
  def on_code(exp); end
  def on_dynamic(code); end
  def on_multi(*exp); end
  def on_newline; end
  def on_static(text); end

  private

  def concat(str); end
end

module Haml::Helpers
  extend(::Haml::Helpers)

  def block_is_haml?(block); end
  def capture_haml(*args, &block); end
  def escape_once(text); end
  def escape_once_without_haml_xss(text); end
  def find_and_preserve(input = T.unsafe(nil), tags = T.unsafe(nil), &block); end
  def flatten(input = T.unsafe(nil), &block); end
  def haml_concat(text = T.unsafe(nil)); end
  def haml_indent; end
  def haml_tag(name, *rest, &block); end
  def haml_tag_if(condition, *tag); end
  def html_attrs(lang = T.unsafe(nil)); end
  def html_escape(text); end
  def html_escape_without_haml_xss(text); end
  def init_haml_helpers; end
  def is_haml?; end
  def list_of(enum, opts = T.unsafe(nil), &block); end
  def non_haml; end
  def precede(str, &block); end
  def preserve(input = T.unsafe(nil), &block); end
  def succeed(str, &block); end
  def surround(front, back = T.unsafe(nil), &block); end
  def tab_down(i = T.unsafe(nil)); end
  def tab_up(i = T.unsafe(nil)); end
  def with_tabs(i); end

  private

  def haml_bind_proc(&proc); end
  def haml_buffer; end
  def haml_internal_concat(text = T.unsafe(nil), newline = T.unsafe(nil), indent = T.unsafe(nil)); end
  def haml_internal_concat_raw(text = T.unsafe(nil), newline = T.unsafe(nil), indent = T.unsafe(nil)); end
  def merge_name_and_attributes(name, attributes_hash = T.unsafe(nil)); end
  def with_haml_buffer(buffer); end

  class << self
    def action_view?; end
  end
end

class Haml::Helpers::ErrorReturn
  def initialize(method); end

  def inspect; end
  def to_s; end
end

Haml::Helpers::HTML_ESCAPE = T.let(T.unsafe(nil), Hash)

Haml::Helpers::HTML_ESCAPE_ONCE_REGEX = T.let(T.unsafe(nil), Regexp)

Haml::Helpers::HTML_ESCAPE_REGEX = T.let(T.unsafe(nil), Regexp)

class Haml::InvalidAttributeNameError < ::Haml::SyntaxError
end

class Haml::Options
  def initialize(values = T.unsafe(nil)); end

  def [](key); end
  def []=(key, value); end
  def attr_wrapper; end
  def attr_wrapper=(value); end
  def autoclose; end
  def autoclose=(_arg0); end
  def cdata; end
  def cdata=(_arg0); end
  def compiler_class; end
  def compiler_class=(_arg0); end
  def encoding; end
  def encoding=(value); end
  def escape_attrs; end
  def escape_attrs=(_arg0); end
  def escape_attrs?; end
  def escape_filter_interpolations; end
  def escape_filter_interpolations=(_arg0); end
  def escape_html; end
  def escape_html=(_arg0); end
  def filename; end
  def filename=(_arg0); end
  def filters; end
  def filters=(_arg0); end
  def for_buffer; end
  def format; end
  def format=(value); end
  def html4?; end
  def html5?; end
  def html?; end
  def hyphenate_data_attrs; end
  def hyphenate_data_attrs=(_arg0); end
  def hyphenate_data_attrs?; end
  def line; end
  def line=(_arg0); end
  def mime_type; end
  def mime_type=(_arg0); end
  def parser_class; end
  def parser_class=(_arg0); end
  def preserve; end
  def preserve=(_arg0); end
  def remove_whitespace; end
  def remove_whitespace=(_arg0); end
  def remove_whitespace?; end
  def suppress_eval; end
  def suppress_eval=(_arg0); end
  def suppress_eval?; end
  def trace; end
  def trace=(_arg0); end
  def xhtml?; end

  private

  def defaults; end

  class << self
    def buffer_defaults; end
    def buffer_option_keys; end
    def defaults; end
    def valid_formats; end
    def wrap(options); end
  end
end

class Haml::Parser
  include(::Haml::Util)

  def initialize(options); end

  def call(template); end
  def compute_tabs(line); end
  def root; end

  private

  def balance(*args); end
  def balance_tokens(buf, start, finish, count: T.unsafe(nil)); end
  def block_keyword(text); end
  def block_opened?; end
  def check_push_script_stack(keyword); end
  def close; end
  def close_filter(_); end
  def close_flat_section; end
  def close_haml_comment(_); end
  def close_script(node); end
  def close_silent_script(node); end
  def closes_flat?(line); end
  def comment(text); end
  def continuation_script?(text); end
  def div(line); end
  def doctype(text); end
  def filter(name); end
  def filter_opened?; end
  def flat?; end
  def flat_script(line, escape_html = T.unsafe(nil)); end
  def haml_comment(text); end
  def handle_multiline(line); end
  def handle_ruby_multiline(line); end
  def is_multiline?(text); end
  def is_ruby_multiline?(text); end
  def mid_block_keyword?(text); end
  def next_line; end
  def parse_new_attribute(scanner); end
  def parse_new_attributes(text); end
  def parse_old_attributes(text); end
  def parse_static_hash(text); end
  def parse_tag(text); end
  def plain(line, escape_html = T.unsafe(nil)); end
  def process_indent(line); end
  def process_line(line); end
  def push(node); end
  def script(line, escape_html = T.unsafe(nil), preserve = T.unsafe(nil)); end
  def silent_script(line); end
  def tag(line); end

  class << self
    def parse_class_and_id(list); end
  end
end

Haml::Parser::BLOCK_KEYWORD_REGEX = T.let(T.unsafe(nil), Regexp)

Haml::Parser::BLOCK_WITH_SPACES = T.let(T.unsafe(nil), Regexp)

Haml::Parser::CLASS_KEY = T.let(T.unsafe(nil), String)

Haml::Parser::COMMENT = T.let(T.unsafe(nil), String)

Haml::Parser::DIV_CLASS = T.let(T.unsafe(nil), String)

Haml::Parser::DIV_ID = T.let(T.unsafe(nil), String)

Haml::Parser::DOCTYPE = T.let(T.unsafe(nil), String)

Haml::Parser::DOCTYPE_REGEX = T.let(T.unsafe(nil), Regexp)

class Haml::Parser::DynamicAttributes < ::Struct
  def new; end
  def new=(_); end
  def old; end
  def old=(value); end
  def to_literal; end

  private

  def stripped_old; end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

Haml::Parser::ELEMENT = T.let(T.unsafe(nil), String)

Haml::Parser::ESCAPE = T.let(T.unsafe(nil), String)

Haml::Parser::FILTER = T.let(T.unsafe(nil), String)

Haml::Parser::FLAT_SCRIPT = T.let(T.unsafe(nil), String)

Haml::Parser::ID_KEY = T.let(T.unsafe(nil), String)

Haml::Parser::LITERAL_VALUE_REGEX = T.let(T.unsafe(nil), Regexp)

class Haml::Parser::Line < ::Struct
  def eod; end
  def eod=(_); end
  def eod?; end
  def full; end
  def full=(_); end
  def index; end
  def index=(_); end
  def parser; end
  def parser=(_); end
  def strip!(from); end
  def tabs; end
  def text; end
  def text=(_); end
  def whitespace; end
  def whitespace=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

Haml::Parser::METHOD_CALL_PREFIX = T.let(T.unsafe(nil), String)

Haml::Parser::MID_BLOCK_KEYWORDS = T.let(T.unsafe(nil), Array)

Haml::Parser::MULTILINE_CHAR_VALUE = T.let(T.unsafe(nil), String)

Haml::Parser::PLAIN_TEXT = T.let(T.unsafe(nil), Integer)

class Haml::Parser::ParseNode < ::Struct
  def initialize(*args); end

  def children; end
  def children=(_); end
  def inspect; end
  def line; end
  def line=(_); end
  def parent; end
  def parent=(_); end
  def type; end
  def type=(_); end
  def value; end
  def value=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

Haml::Parser::SANITIZE = T.let(T.unsafe(nil), String)

Haml::Parser::SCRIPT = T.let(T.unsafe(nil), String)

Haml::Parser::SILENT_COMMENT = T.let(T.unsafe(nil), String)

Haml::Parser::SILENT_SCRIPT = T.let(T.unsafe(nil), String)

Haml::Parser::SPECIAL_CHARACTERS = T.let(T.unsafe(nil), Array)

Haml::Parser::START_BLOCK_KEYWORDS = T.let(T.unsafe(nil), Array)

Haml::Parser::START_BLOCK_KEYWORD_REGEX = T.let(T.unsafe(nil), Regexp)

class Haml::Railtie < ::Rails::Railtie
end

class Haml::SyntaxError < ::Haml::Error
end

module Haml::Template
  extend(::Haml::Template)

  def options; end
  def options=(_arg0); end
end

class Haml::Template::Options < ::Hash
  def []=(key, value); end
end

class Haml::TempleEngine < ::Temple::Engine
  def compile(template); end
  def precompiled; end
  def precompiled_with_ambles(local_names, after_preamble: T.unsafe(nil), before_postamble: T.unsafe(nil)); end
  def precompiled_with_return_value; end

  private

  def initialize_encoding(template, given_value); end
  def inspect_obj(obj); end
  def locals_code(names); end
  def precompiled_method_return_value; end
end

module Haml::TempleLineCounter
  class << self
    def count_lines(exp); end
  end
end

class Haml::TempleLineCounter::UnexpectedExpression < ::StandardError
end

module Haml::Util
  extend(::Haml::Util)

  def balance(scanner, start, finish, count = T.unsafe(nil)); end
  def check_encoding(str); end
  def check_haml_encoding(str, &block); end
  def contains_interpolation?(str); end
  def handle_interpolation(str); end
  def html_safe(text); end
  def human_indentation(indentation); end
  def inspect_obj(obj); end
  def rails_xss_safe?; end
  def silence_warnings; end
  def unescape_interpolation(str, escape_html = T.unsafe(nil)); end

  private

  def parse_haml_magic_comment(str); end
  def try_parse_haml_emacs_magic_comment(scanner); end
end

Haml::VERSION = T.let(T.unsafe(nil), String)

class Object < ::BasicObject
  include(::ActiveSupport::ToJsonWithActiveSupportEncoder)
  include(::ActiveSupport::ForkTracker::CoreExt)
  include(::ActiveSupport::ForkTracker::CoreExtPrivate)
  include(::Kernel)
  include(::JSON::Ext::Generator::GeneratorMethods::Object)
  include(::ActiveSupport::Tryable)
  include(::ActiveSupport::Dependencies::Loadable)
  include(::PP::ObjectMixin)

  def is_haml?; end
end

::IS_SECTION = T.let(T.unsafe(nil), Regexp)
