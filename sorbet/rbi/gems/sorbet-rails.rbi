# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: false
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/sorbet-rails/all/sorbet-rails.rbi
#
# sorbet-rails-0.7.0

module SorbetRails
  def self.config(&blk); end
  def self.configure(*args, &blk); end
  def self.register_configured_plugins(&blk); end
end
class SorbetRails::Config
  def enabled_gem_plugins(*args, &blk); end
  def enabled_gem_plugins=(arg0); end
  def enabled_model_plugins(*args, &blk); end
  def enabled_model_plugins=(arg0); end
  def enabled_plugins(*args, &blk); end
  def extra_helper_includes(*args, &blk); end
  def extra_helper_includes=(arg0); end
  def initialize(&blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class SorbetRails::Railtie < Rails::Railtie
end
module SorbetRails::ModelUtils
  def add_relation_query_method(*args, &blk); end
  def exists_class_method?(*args, &blk); end
  def exists_instance_method?(*args, &blk); end
  def habtm_class?(*args, &blk); end
  def model_assoc_proxy_class_name(*args, &blk); end
  def model_assoc_relation_class_name(*args, &blk); end
  def model_class(*args, &blk); end
  def model_class_name(*args, &blk); end
  def model_module_name(*args, &blk); end
  def model_query_methods_returning_assoc_relation_module_name(*args, &blk); end
  def model_query_methods_returning_relation_module_name(*args, &blk); end
  def model_relation_class_name(*args, &blk); end
  def model_relation_type_alias(*args, &blk); end
  def model_relation_type_class_name(*args, &blk); end
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module SorbetRails::ModelPlugins
  def get_plugin_by_name(*args, &blk); end
  def get_plugins(*args, &blk); end
  def register_plugin(*args, &blk); end
  def register_plugin_by_name(arg0, &blk); end
  def set_plugins(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Kernel
end
class SorbetRails::ModelPlugins::Base < Parlour::Plugin
  def attribute_has_unconditional_presence_validation?(*args, &blk); end
  def available_classes(*args, &blk); end
  def initialize(*args, &blk); end
  def model_class(*args, &blk); end
  extend T::Helpers
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include SorbetRails::ModelUtils
end
module SorbetRails::Utils
  def self.rails_eager_load_all!(*args, &blk); end
  def self.valid_method_name?(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class SorbetRails::ModelPlugins::ActiveRecordEnum < SorbetRails::ModelPlugins::Base
  def generate(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::ActiveRecordQuerying < SorbetRails::ModelPlugins::Base
  def create_in_batches_method(*args, &blk); end
  def generate(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::ActiveRelationWhereNot < SorbetRails::ModelPlugins::Base
  def generate(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::ActiveRecordNamedScope < SorbetRails::ModelPlugins::Base
  def generate(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::ActiveRecordAttribute < SorbetRails::ModelPlugins::Base
  def active_record_type_to_sorbet_type(*args, &blk); end
  def generate(*args, &blk); end
  def generate_enum_methods(*args, &blk); end
  def nilable_column?(*args, &blk); end
  def time_zone_aware_column?(*args, &blk); end
  def type_for_column_def(*args, &blk); end
  def value_type_for_attr_writer(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::ActiveRecordAttribute::ColumnType < T::Struct
  def __t_props_generated_deserialize(*args); end
  def __t_props_generated_serialize(*args); end
  def array_type; end
  def base_type; end
  def nilable; end
  def self.inherited(s); end
  def to_s(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
  extend T::Sig
end
class SorbetRails::ModelPlugins::ActiveRecordAssoc < SorbetRails::ModelPlugins::Base
  def assoc_should_be_untyped?(*args, &blk); end
  def belongs_to_and_required?(*args, &blk); end
  def generate(*args, &blk); end
  def has_one_and_required?(*args, &blk); end
  def initialize(*args, &blk); end
  def polymorphic_assoc?(*args, &blk); end
  def populate_collection_assoc_getter_setter(*args, &blk); end
  def populate_single_assoc_getter_setter(*args, &blk); end
  def relation_should_be_untyped?(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::CustomFinderMethods < SorbetRails::ModelPlugins::Base
  def generate(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::EnumerableCollections < SorbetRails::ModelPlugins::Base
  def generate(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::ActiveStorageMethods < SorbetRails::ModelPlugins::Base
  def create_has_many_methods(*args, &blk); end
  def create_has_one_methods(*args, &blk); end
  def generate(*args, &blk); end
  def initialize(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
end
class SorbetRails::ModelPlugins::UnrecognizedPluginName < StandardError
end
class SorbetRails::ModelRbiFormatter
  def available_classes(*args, &blk); end
  def generate_base_rbi(*args, &blk); end
  def generate_rbi(*args, &blk); end
  def initialize(*args, &blk); end
  def model_class(*args, &blk); end
  def run_plugins(*args, &blk); end
  extend SorbetRails::ModelPlugins
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include SorbetRails::ModelUtils
end
module ITypeAssert
  def assert(*args, &blk); end
  def get_type; end
  extend T::Generic
  extend T::InterfaceWrapper::Helpers
  extend T::Private::Abstract::Hooks
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
module TypeAssertImpl
end
class TA
  def assert(*args, &blk); end
  extend T::Generic
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include ITypeAssert
end
class ActiveRecordOverrides
  def enum_calls; end
  def get_enum_call(klass, enum_sym); end
  def initialize; end
  def self.allocate; end
  def self.instance; end
  def self.new(*arg0); end
  def store_enum_call(klass, kwargs); end
  extend Singleton::SingletonClassMethods
  include Singleton
end
class SorbetRails::TypedEnumConfig < T::Struct
  def __t_props_generated_deserialize(*args); end
  def __t_props_generated_serialize(*args); end
  def class_name; end
  def self.inherited(s); end
  def strict_mode; end
  extend T::Props::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Plugin::ClassMethods
  extend T::Props::Serializable::ClassMethods
end
module ActiveRecord::Enum
  def _define_enum(*args, &blk); end
  def _define_typed_enum(*args, &blk); end
  def extract_enum_values(*args, &blk); end
  def gen_typed_enum_values(*args, &blk); end
  def old_enum(definitions); end
  def typed_enum(*args, &blk); end
  def typed_enum_reflections(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
  include Kernel
end
class ActiveRecord::Enum::MultipleEnumsDefinedError < StandardError
end
class ActiveRecord::Enum::ConflictTypedEnumNameError < StandardError
end
module SorbetRails::CustomFinderMethods
  def find_by_id!(id); end
  def find_by_id(id); end
  def find_n(*ids); end
  def first_n(n); end
  def last_n(n); end
end
module SorbetRails::PluckToTStruct
  def pluck_to_tstruct(*args, &blk); end
  extend T::Private::Methods::MethodHooks
  extend T::Private::Methods::SingletonMethodHooks
  extend T::Sig
end
class SorbetRails::PluckToTStruct::UnexpectedType < StandardError
end
module GeneratedUrlHelpers
  def _generate_paths_by_default; end
  def _routes; end
  def self._routes; end
  def self.full_url_for(options); end
  def self.optimize_routes_generation?; end
  def self.polymorphic_path(record_or_hash_or_array, options = nil); end
  def self.polymorphic_url(record_or_hash_or_array, options = nil); end
  def self.route_for(name, *args); end
  def self.url_for(options); end
  def self.url_options; end
  extend ActiveSupport::Concern
  extend Anonymous_Module_27
  extend Anonymous_Module_28
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_27
  include Anonymous_Module_28
end
