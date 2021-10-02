# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `nenv` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module Nenv
  class << self
    def instance; end
    def method_missing(meth, *args); end
    def reset; end
    def respond_to?(meth); end
  end
end

class Nenv::AutoEnvironment < ::Nenv::Environment
  def method_missing(meth, *args); end
end

module Nenv::Builder
  class << self
    def build(&block); end
  end
end

class Nenv::Environment
  def initialize(namespace = T.unsafe(nil)); end

  def create_method(meth, &block); end

  private

  def _namespaced_sanitize(meth); end
  def _sanitize(meth); end

  class << self
    def _create_env_accessor(klass, meth, &block); end
    def create_method(meth, &block); end

    private

    def _create_env_reader(klass, meth, &block); end
    def _create_env_writer(klass, meth, &block); end
    def _fail_if_accessor_exists(klass, meth); end
  end
end

class Nenv::Environment::AlreadyExistsError < ::Nenv::Environment::MethodError
  def message; end
end

module Nenv::Environment::Dumper
  class << self
    def setup(&callback); end
  end
end

module Nenv::Environment::Dumper::Default
  class << self
    def call(raw_value); end
  end
end

class Nenv::Environment::Error < ::ArgumentError
end

module Nenv::Environment::Loader
  class << self
    def setup(meth, &callback); end
  end
end

module Nenv::Environment::Loader::Default
  class << self
    def call(raw_value); end
  end
end

module Nenv::Environment::Loader::Predicate
  class << self
    def call(raw_value); end
  end
end

class Nenv::Environment::MethodError < ::Nenv::Environment::Error
  def initialize(meth); end
end

Nenv::VERSION = T.let(T.unsafe(nil), String)
