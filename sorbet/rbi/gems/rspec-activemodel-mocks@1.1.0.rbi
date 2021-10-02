# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rspec-activemodel-mocks` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module RSpec
  extend(::RSpec::Support::Warnings)
  extend(::RSpec::Core::Warnings)

  class << self
    def clear_examples; end
    def configuration; end
    def configuration=(_arg0); end
    def configure; end
    def const_missing(name); end
    def context(*args, &example_group_block); end
    def current_example; end
    def current_example=(example); end
    def describe(*args, &example_group_block); end
    def example_group(*args, &example_group_block); end
    def fcontext(*args, &example_group_block); end
    def fdescribe(*args, &example_group_block); end
    def reset; end
    def shared_context(name, *args, &block); end
    def shared_examples(name, *args, &block); end
    def shared_examples_for(name, *args, &block); end
    def world; end
    def world=(_arg0); end
    def xcontext(*args, &example_group_block); end
    def xdescribe(*args, &example_group_block); end
  end
end

module RSpec::ActiveModel
end

module RSpec::ActiveModel::Mocks
end

class RSpec::ActiveModel::Mocks::IllegalDataAccessException < ::StandardError
end

module RSpec::ActiveModel::Mocks::Mocks
  def mock_model(string_or_model_class, stubs = T.unsafe(nil)); end
  def stub_model(model_class, stubs = T.unsafe(nil)); end

  private

  def next_id; end
end

module RSpec::ActiveModel::Mocks::Mocks::ActiveModelInstanceMethods
  def as_new_record; end
  def persisted?; end
  def respond_to?(message, include_private = T.unsafe(nil)); end
end

module RSpec::ActiveModel::Mocks::Mocks::ActiveModelStubExtensions
  def as_new_record; end
  def persisted?; end
end

module RSpec::ActiveModel::Mocks::Mocks::ActiveRecordInstanceMethods
  def [](key); end
  def _read_attribute(key); end
  def association(association_name); end
  def destroy; end
  def new_record?; end
end

module RSpec::ActiveModel::Mocks::Mocks::ActiveRecordStubExtensions
  def as_new_record; end
  def connection; end
  def new_record?; end
end

class RSpec::ActiveModel::Mocks::Mocks::Association
  def initialize(association_name); end

  def inversed; end
  def inversed=(_arg0); end
  def inversed_from(record); end
  def target; end
  def target=(_arg0); end
end

module RSpec::ActiveModel::Mocks::Version
end

RSpec::ActiveModel::Mocks::Version::STRING = T.let(T.unsafe(nil), String)

RSpec::MODULES_TO_AUTOLOAD = T.let(T.unsafe(nil), Hash)

RSpec::SharedContext = RSpec::Core::SharedContext
