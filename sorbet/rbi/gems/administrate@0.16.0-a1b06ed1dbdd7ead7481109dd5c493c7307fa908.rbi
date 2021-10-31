# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `administrate` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module ActionController::Base::HelperMethods
  def alert(*args, &block); end
  def combined_fragment_cache_key(*args, &block); end
  def content_security_policy?(*args, &block); end
  def content_security_policy_nonce(*args, &block); end
  def cookies(*args, &block); end
  def form_authenticity_token(*args, &block); end
  def notice(*args, &block); end
  def protect_against_forgery?(*args, &block); end
  def view_cache_dependencies(*args, &block); end
end

module Administrate
  class << self
    def railtie_helpers_paths; end
    def railtie_namespace; end
    def railtie_routes_url_helpers(include_path_helpers = T.unsafe(nil)); end
    def table_name_prefix; end
    def use_relative_model_naming?; end
    def warn_of_deprecated_option(name); end
    def warn_of_missing_resource_class; end
  end
end

class Administrate::ApplicationController < ::ActionController::Base
  def create; end
  def dashboard_class(*args, &block); end
  def destroy; end
  def edit; end
  def index; end
  def namespace(*args, &block); end
  def new; end
  def resource_class(*args, &block); end
  def resource_name(*args, &block); end
  def show; end
  def update; end

  private

  def _layout(lookup_context, formats); end
  def after_resource_created_path(requested_resource); end
  def after_resource_destroyed_path(_requested_resource); end
  def after_resource_updated_path(requested_resource); end
  def apply_collection_includes(relation); end
  def authorize_resource(resource); end
  def dashboard; end
  def default_sorting_attribute; end
  def default_sorting_direction; end
  def find_resource(param); end
  def nav_link_state(resource); end
  def new_resource; end
  def order; end
  def read_param_value(data); end
  def records_per_page; end
  def requested_resource; end
  def resource_params; end
  def resource_resolver; end
  def routes; end
  def scoped_resource; end
  def show_action?(_action, _resource); end
  def show_search_bar?; end
  def sorting_attribute; end
  def sorting_direction; end
  def sorting_params; end
  def translate_with_resource(key); end
  def valid_action?(name, resource = T.unsafe(nil)); end

  class << self
    def __callbacks; end
    def _helper_methods; end
    def middleware_stack; end
  end
end

module Administrate::ApplicationController::HelperMethods
  include ::ActionController::Base::HelperMethods

  def namespace(*args, &block); end
  def nav_link_state(*args, &block); end
  def new_resource(*args, &block); end
  def resource_class(*args, &block); end
  def resource_name(*args, &block); end
  def show_action?(*args, &block); end
  def valid_action?(*args, &block); end
end

module Administrate::ApplicationHelper
  def application_title; end
  def clear_search_params; end
  def dashboard_from_resource(resource_name); end
  def display_resource_name(resource_name, opts = T.unsafe(nil)); end
  def model_from_resource(resource_name); end
  def render_field(field, locals = T.unsafe(nil)); end
  def requireness(field); end
  def resource_index_route(resource_name); end
  def sanitized_order_params(page, current_field_name); end
  def sort_order(order); end

  private

  def default_resource_name(name, opts = T.unsafe(nil)); end
end

Administrate::ApplicationHelper::PLURAL_MANY_COUNT = T.let(T.unsafe(nil), Float)
Administrate::ApplicationHelper::SINGULAR_COUNT = T.let(T.unsafe(nil), Integer)

class Administrate::BaseDashboard
  include ::Administrate

  def all_attributes; end
  def attribute_type_for(attribute_name); end
  def attribute_types; end
  def attribute_types_for(attribute_names); end
  def collection_attributes; end
  def collection_includes; end
  def display_resource(resource); end
  def form_attributes(action = T.unsafe(nil)); end
  def item_includes; end
  def permitted_attributes; end
  def show_page_attributes; end
  def specific_form_attributes_for(action); end

  private

  def attribute_includes(attributes); end
  def attribute_not_found_message(attr); end

  class << self
    def model; end
    def resource_name(opts); end
  end
end

Administrate::BaseDashboard::DASHBOARD_SUFFIX = T.let(T.unsafe(nil), String)

class Administrate::CustomDashboard
  include ::Administrate

  class << self
    def resource(resource_name); end
    def resource_name(_opts); end
  end
end

class Administrate::Engine < ::Rails::Engine
  class << self
    def add_javascript(script); end
    def add_stylesheet(stylesheet); end
    def javascripts; end
    def stylesheets; end
  end
end

module Administrate::Field; end

class Administrate::Field::Associative < ::Administrate::Field::Base
  def associated_class; end
  def display_associated_resource; end

  private

  def associated_class_name; end
  def associated_dashboard; end
  def deprecated_option(name); end
  def foreign_key; end
  def option_given?(name); end
  def primary_key; end

  class << self
    def associated_class(resource_class, attr); end
    def associated_class_name(resource_class, attr); end
    def foreign_key_for(resource_class, attr); end
    def reflection(resource_class, attr); end
  end
end

class Administrate::Field::Base
  def initialize(attribute, data, page, options = T.unsafe(nil)); end

  def attribute; end
  def data; end
  def html_class; end
  def name; end
  def options; end
  def page; end
  def required?; end
  def resource; end
  def to_partial_path; end

  class << self
    def associative?; end
    def field_type; end
    def html_class; end
    def permitted_attribute(attr, _options = T.unsafe(nil)); end
    def searchable?; end
    def with_options(options = T.unsafe(nil)); end
  end
end

class Administrate::Field::BelongsTo < ::Administrate::Field::Associative
  def associated_resource_options; end
  def include_blank_option; end
  def permitted_attribute; end
  def selected_option; end

  private

  def candidate_resources; end
  def display_candidate_resource(resource); end

  class << self
    def permitted_attribute(attr, options = T.unsafe(nil)); end
  end
end

class Administrate::Field::Boolean < ::Administrate::Field::Base
  def to_s; end
end

class Administrate::Field::Date < ::Administrate::Field::Base
  def date; end

  private

  def format; end
end

class Administrate::Field::DateTime < ::Administrate::Field::Base
  def date; end
  def datetime; end

  private

  def format; end
  def timezone; end
end

class Administrate::Field::Deferred
  def initialize(deferred_class, options = T.unsafe(nil)); end

  def ==(other); end
  def associative?; end
  def deferred_class; end
  def html_class(*args, &block); end
  def new(*args); end
  def options; end
  def permitted_attribute(attr, opts = T.unsafe(nil)); end
  def searchable?; end
  def searchable_field; end
  def searchable_fields; end
end

class Administrate::Field::Email < ::Administrate::Field::Base
  class << self
    def searchable?; end
  end
end

class Administrate::Field::HasMany < ::Administrate::Field::Associative
  def associated_collection(order = T.unsafe(nil)); end
  def associated_resource_options; end
  def attribute_key; end
  def data; end
  def limit; end
  def more_than_limit?; end
  def order; end
  def order_from_params(params); end
  def permitted_attribute; end
  def resources(page = T.unsafe(nil), order = T.unsafe(nil)); end
  def selected_options; end

  private

  def candidate_resources; end
  def direction; end
  def display_candidate_resource(resource); end
  def includes; end
  def sort_by; end

  class << self
    def permitted_attribute(attr, _options = T.unsafe(nil)); end
  end
end

Administrate::Field::HasMany::DEFAULT_LIMIT = T.let(T.unsafe(nil), Integer)

class Administrate::Field::HasOne < ::Administrate::Field::Associative
  def linkable?; end
  def nested_form; end
  def nested_show; end

  private

  def resolver; end

  class << self
    def permitted_attribute(attr, options = T.unsafe(nil)); end
  end
end

class Administrate::Field::Number < ::Administrate::Field::Base
  def to_s; end

  private

  def decimals; end
  def format(result); end
  def format_string; end
  def prefix; end
  def suffix; end
  def value; end
end

class Administrate::Field::Password < ::Administrate::Field::Base
  def truncate; end

  private

  def character; end
  def truncation_length; end

  class << self
    def searchable?; end
  end
end

class Administrate::Field::Polymorphic < ::Administrate::Field::BelongsTo
  def associated_resource_grouped_options; end
  def permitted_attribute; end
  def selected_global_id; end

  private

  def associated_dashboard(klass = T.unsafe(nil)); end
  def candidate_resources_for(klass); end
  def classes; end
  def display_candidate_resource(resource); end
  def order; end

  class << self
    def permitted_attribute(attr, _options = T.unsafe(nil)); end
  end
end

class Administrate::Field::Select < ::Administrate::Field::Base
  def include_blank_option; end
  def selectable_options; end

  private

  def collection; end

  class << self
    def searchable?; end
  end
end

class Administrate::Field::String < ::Administrate::Field::Base
  def truncate; end

  private

  def truncation_length; end

  class << self
    def searchable?; end
  end
end

class Administrate::Field::Text < ::Administrate::Field::Base
  def truncate; end

  private

  def truncation_length; end

  class << self
    def searchable?; end
  end
end

class Administrate::Field::Time < ::Administrate::Field::Base; end

class Administrate::Field::Url < ::Administrate::Field::Base
  def truncate; end

  private

  def truncation_length; end

  class << self
    def searchable?; end
  end
end

class Administrate::Namespace
  def initialize(namespace); end

  def resources; end
  def resources_with_index_route; end
  def routes; end

  private

  def all_routes; end
  def namespace; end
end

class Administrate::Namespace::Resource
  def initialize(namespace, resource); end

  def name; end
  def namespace; end
  def path; end
  def resource; end
  def to_s; end
  def to_sym; end
end

class Administrate::Order
  def initialize(attribute = T.unsafe(nil), direction = T.unsafe(nil)); end

  def apply(relation); end
  def direction; end
  def order_params_for(attr); end
  def ordered_by?(attr); end

  private

  def attribute; end
  def belongs_to_attribute?(relation); end
  def foreign_key(relation); end
  def has_many_attribute?(relation); end
  def opposite_direction; end
  def order_by_association(relation); end
  def order_by_count(relation); end
  def order_by_id(relation); end
  def reflect_association(relation); end
  def reversed_direction_param_for(attr); end
  def sanitize_direction(direction); end
end

module Administrate::Page; end

class Administrate::Page::Base
  def initialize(dashboard, options = T.unsafe(nil)); end

  def collection_includes; end
  def item_includes; end
  def resource_name; end
  def resource_path; end

  private

  def attribute_field(dashboard, resource, attribute_name, page); end
  def dashboard; end
  def get_attribute_value(resource, attribute_name); end
  def options; end
end

class Administrate::Page::Collection < ::Administrate::Page::Base
  def attribute_names; end
  def attribute_types; end
  def attributes_for(resource); end
  def order_params_for(attr, key: T.unsafe(nil)); end
  def ordered_by?(*args, &block); end
  def ordered_html_class(attr); end

  private

  def order; end
end

class Administrate::Page::Form < ::Administrate::Page::Base
  def initialize(dashboard, resource); end

  def attributes(action = T.unsafe(nil)); end
  def page_title; end
  def resource; end

  private

  def dashboard; end
end

class Administrate::Page::Show < ::Administrate::Page::Base
  def initialize(dashboard, resource); end

  def attributes; end
  def page_title; end
  def resource; end
end

module Administrate::Punditize; end

class Administrate::ResourceResolver
  def initialize(controller_path); end

  def dashboard_class; end
  def namespace; end
  def resource_class; end
  def resource_name; end
  def resource_title; end

  private

  def controller_path; end
  def controller_path_parts; end
  def model_path_parts; end
  def resource_class_name; end
end

class Administrate::Search
  def initialize(scoped_resource, dashboard_class, term); end

  def run; end

  private

  def apply_filter(filter, filter_param, resources); end
  def association_search?(attribute); end
  def attribute_types; end
  def column_to_query(attr); end
  def filter_results(resources); end
  def query; end
  def query_table_name(attr); end
  def query_template; end
  def query_values; end
  def resolver; end
  def search_attributes; end
  def search_results(resources); end
  def searchable_fields(attr); end
  def tables_to_join; end
  def term; end
  def valid_filters; end
end

class Administrate::Search::Query
  def initialize(original_query, valid_filters = T.unsafe(nil)); end

  def blank?; end
  def filters; end
  def original; end
  def terms; end
  def to_s; end
  def valid_filters; end

  private

  def filter?(word); end
  def parse_query(query); end
end
