# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `coercible` gem.
# Please instead update this file by running `bin/tapioca gem coercible`.

# typed: true

module Coercible
  class << self
    def rbx?; end
  end
end

class Coercible::Coercer
  def initialize(config, coercers = T.unsafe(nil)); end

  def [](klass); end
  def coercers; end
  def config; end

  private

  def config_for(coercer); end
  def initialize_coercer(klass); end

  class << self
    def new(&block); end

    private

    def config_keys; end
    def configurable_coercers(&block); end
  end
end

class Coercible::Coercer::Array < ::Coercible::Coercer::Object
  def to_set(value); end
end

Coercible::Coercer::Array::TIME_SEGMENTS = T.let(T.unsafe(nil), Array)

module Coercible::Coercer::Configurable
  def config(&block); end
  def config_name; end
  def configuration_class; end

  class << self
    def extended(coercer); end
  end
end

class Coercible::Coercer::Date < ::Coercible::Coercer::Object
  include ::Coercible::Coercer::TimeCoercions

  def to_date(value); end
end

class Coercible::Coercer::DateTime < ::Coercible::Coercer::Object
  include ::Coercible::Coercer::TimeCoercions

  def to_datetime(value); end
end

class Coercible::Coercer::Decimal < ::Coercible::Coercer::Numeric
  def to_decimal(value); end
  def to_string(value); end
end

Coercible::Coercer::Decimal::FLOAT_FORMAT = T.let(T.unsafe(nil), String)

class Coercible::Coercer::FalseClass < ::Coercible::Coercer::Object
  def to_string(value); end
end

class Coercible::Coercer::Float < ::Coercible::Coercer::Numeric
  def to_datetime(value); end
  def to_float(value); end
end

class Coercible::Coercer::Hash < ::Coercible::Coercer::Object
  def to_date(value); end
  def to_datetime(value); end
  def to_time(value); end

  private

  def extract(value); end
end

Coercible::Coercer::Hash::TIME_SEGMENTS = T.let(T.unsafe(nil), Array)

class Coercible::Coercer::Integer < ::Coercible::Coercer::Numeric
  extend ::Coercible::Coercer::Configurable

  def initialize(coercer = T.unsafe(nil), config = T.unsafe(nil)); end

  def boolean_map; end
  def datetime_format; end
  def datetime_proc; end
  def to_boolean(value); end
  def to_datetime(value); end
  def to_integer(value); end
  def to_string(value); end

  class << self
    def config; end
    def config_keys(value = T.unsafe(nil)); end
  end
end

class Coercible::Coercer::Numeric < ::Coercible::Coercer::Object
  def to_decimal(value); end
  def to_float(value); end
  def to_integer(value); end
  def to_string(value); end
end

class Coercible::Coercer::Object
  extend ::Coercible::Options
  extend ::DescendantsTracker
  extend ::Coercible::TypeLookup

  def initialize(coercers = T.unsafe(nil)); end

  def coerced?(value); end
  def coercers; end
  def inspect; end
  def to_array(value); end
  def to_hash(value); end
  def to_integer(value); end
  def to_string(value); end

  private

  def coerce_with_method(value, method, ref_method); end
  def method_missing(method, *args); end
  def raise_unsupported_coercion(value, method); end

  class << self
    def primitive(value = T.unsafe(nil)); end
  end
end

Coercible::Coercer::Object::COERCION_METHOD_REGEXP = T.let(T.unsafe(nil), Regexp)

class Coercible::Coercer::String < ::Coercible::Coercer::Object
  extend ::Coercible::Coercer::Configurable

  def initialize(coercer = T.unsafe(nil), config = T.unsafe(nil)); end

  def boolean_map; end
  def to_boolean(value); end
  def to_constant(value); end
  def to_date(value); end
  def to_datetime(value); end
  def to_decimal(value); end
  def to_float(value); end
  def to_integer(value); end
  def to_symbol(value); end
  def to_time(value); end

  private

  def constant_lookup(mod, name); end
  def parse_value(parser, value, method); end
  def to_numeric(value, method); end

  class << self
    def config; end
    def config_keys(value = T.unsafe(nil)); end
  end
end

Coercible::Coercer::String::BOOLEAN_MAP = T.let(T.unsafe(nil), Hash)
Coercible::Coercer::String::EXPONENT_REGEXP = T.let(T.unsafe(nil), Regexp)
Coercible::Coercer::String::FALSE_VALUES = T.let(T.unsafe(nil), Array)
Coercible::Coercer::String::FRACTIONAL_REGEXP = T.let(T.unsafe(nil), Regexp)
Coercible::Coercer::String::INTEGER_REGEXP = T.let(T.unsafe(nil), Regexp)
Coercible::Coercer::String::NUMERIC_REGEXP = T.let(T.unsafe(nil), Regexp)
Coercible::Coercer::String::TRUE_VALUES = T.let(T.unsafe(nil), Array)

class Coercible::Coercer::Symbol < ::Coercible::Coercer::Object
  def to_string(value); end
end

class Coercible::Coercer::Time < ::Coercible::Coercer::Object
  include ::Coercible::Coercer::TimeCoercions

  def to_integer(value); end
  def to_time(value); end
end

module Coercible::Coercer::TimeCoercions
  def to_date(value); end
  def to_datetime(value); end
  def to_string(value); end
  def to_time(value); end

  private

  def coerce_with_method(value, method); end
end

class Coercible::Coercer::TrueClass < ::Coercible::Coercer::Object
  def to_string(value); end
end

class Coercible::Configuration
  class << self
    def build(keys, &block); end
  end
end

Coercible::EXTRA_CONST_ARGS = T.let(T.unsafe(nil), Array)

module Coercible::Options
  def accept_options(*new_options); end
  def accepted_options; end
  def options; end

  protected

  def add_accepted_options(new_options); end
  def define_option_method(option); end
  def set_options(new_options); end

  private

  def inherited(descendant); end

  class << self
    def extended(descendant); end
  end
end

class Coercible::Options::Undefined; end

module Coercible::TypeLookup
  def determine_type(class_or_name); end
  def primitive; end

  private

  def determine_type_and_cache(class_or_name); end
  def determine_type_from_descendant(descendant); end
  def determine_type_from_primitive(primitive); end
  def determine_type_from_string(string); end

  class << self
    def extended(model); end
  end
end

Coercible::TypeLookup::TYPE_FORMAT = T.let(T.unsafe(nil), Regexp)
class Coercible::UnsupportedCoercion < ::StandardError; end
Coercible::VERSION = T.let(T.unsafe(nil), String)
