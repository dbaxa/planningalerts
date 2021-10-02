# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `ice_nine` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module IceNine
  class << self
    def deep_freeze(object); end
    def deep_freeze!(object); end
  end
end

class IceNine::Freezer
  class << self
    def [](mod); end
    def deep_freeze(object); end
    def deep_freeze!(object); end

    protected

    def const_lookup(namespace); end
    def guarded_deep_freeze(object, recursion_guard); end

    private

    def find(name); end
  end
end

class IceNine::Freezer::Array < ::IceNine::Freezer::Object
  class << self
    def guarded_deep_freeze(array, recursion_guard); end
  end
end

IceNine::Freezer::BasicObject = IceNine::Freezer::Object

class IceNine::Freezer::FalseClass < ::IceNine::Freezer::NoFreeze
end

class IceNine::Freezer::Hash < ::IceNine::Freezer::Object
  class << self
    def guarded_deep_freeze(hash, recursion_guard); end

    private

    def freeze_key_value_pairs(hash, recursion_guard); end
  end
end

class IceNine::Freezer::Hash::State < ::IceNine::Freezer::NoFreeze
end

class IceNine::Freezer::Module < ::IceNine::Freezer::NoFreeze
end

class IceNine::Freezer::NilClass < ::IceNine::Freezer::NoFreeze
end

class IceNine::Freezer::NoFreeze < ::IceNine::Freezer
  class << self
    def guarded_deep_freeze(object, _recursion_guard); end
  end
end

class IceNine::Freezer::Numeric < ::IceNine::Freezer::NoFreeze
end

class IceNine::Freezer::Object < ::IceNine::Freezer
  class << self
    def guarded_deep_freeze(object, recursion_guard); end

    private

    def freeze_instance_variables(object, recursion_guard); end
  end
end

class IceNine::Freezer::Range < ::IceNine::Freezer::Object
  class << self
    def guarded_deep_freeze(range, recursion_guard); end
  end
end

class IceNine::Freezer::Rubinius < ::IceNine::Freezer::NoFreeze
end

class IceNine::Freezer::Struct < ::IceNine::Freezer::Array
end

class IceNine::Freezer::Symbol < ::IceNine::Freezer::NoFreeze
end

class IceNine::Freezer::TrueClass < ::IceNine::Freezer::NoFreeze
end

class IceNine::RecursionGuard
end

class IceNine::RecursionGuard::Frozen < ::IceNine::RecursionGuard
  def guard(object); end
end

class IceNine::RecursionGuard::ObjectSet < ::IceNine::RecursionGuard
  def initialize; end

  def guard(object); end
end

IceNine::VERSION = T.let(T.unsafe(nil), String)
