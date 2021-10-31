# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `health_check` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module ActionDispatch::Routing
  extend ::ActiveSupport::Autoload
end

ActionDispatch::Routing::HTTP_METHODS = T.let(T.unsafe(nil), Array)

class ActionDispatch::Routing::Mapper
  include ::ActionDispatch::Routing::Mapper::Base
  include ::ActionDispatch::Routing::Mapper::HttpHelpers
  include ::ActionDispatch::Routing::Redirection
  include ::ActionDispatch::Routing::Mapper::Scoping
  include ::ActionDispatch::Routing::Mapper::Concerns
  include ::ActionDispatch::Routing::Mapper::Resources
  include ::ActionDispatch::Routing::Mapper::CustomUrls

  def initialize(set); end

  def add_health_check_routes(prefix = T.unsafe(nil)); end
  def as(scope); end
  def authenticate(scope = T.unsafe(nil), block = T.unsafe(nil)); end
  def authenticated(scope = T.unsafe(nil), block = T.unsafe(nil)); end
  def devise_for(*resources); end
  def devise_scope(scope); end
  def health_check_routes(prefix = T.unsafe(nil)); end
  def unauthenticated(scope = T.unsafe(nil)); end

  protected

  def constraints_for(method_to_apply, scope = T.unsafe(nil), block = T.unsafe(nil)); end
  def devise_confirmation(mapping, controllers); end
  def devise_omniauth_callback(mapping, controllers); end
  def devise_password(mapping, controllers); end
  def devise_registration(mapping, controllers); end
  def devise_session(mapping, controllers); end
  def devise_unlock(mapping, controllers); end
  def raise_no_devise_method_error!(klass); end
  def raise_no_secret_key; end
  def set_omniauth_path_prefix!(path_prefix); end
  def with_devise_exclusive_scope(new_path, new_as, options); end

  class << self
    def normalize_name(name); end
    def normalize_path(path); end
  end
end

ActionDispatch::Routing::Mapper::URL_OPTIONS = T.let(T.unsafe(nil), Array)
ActionDispatch::Routing::SEPARATORS = T.let(T.unsafe(nil), Array)

module BaseHealthCheck
  def create_error(check_type, error_message); end
end

module HealthCheck
  def accept_proxied_requests; end
  def accept_proxied_requests=(val); end
  def basic_auth_password; end
  def basic_auth_password=(val); end
  def basic_auth_username; end
  def basic_auth_username=(val); end
  def buckets; end
  def buckets=(val); end
  def custom_checks; end
  def custom_checks=(val); end
  def failure; end
  def failure=(val); end
  def failure_callbacks; end
  def failure_callbacks=(val); end
  def full_checks; end
  def full_checks=(val); end
  def http_status_for_error_object; end
  def http_status_for_error_object=(val); end
  def http_status_for_error_text; end
  def http_status_for_error_text=(val); end
  def http_status_for_ip_whitelist_error; end
  def http_status_for_ip_whitelist_error=(val); end
  def include_error_in_response_body; end
  def include_error_in_response_body=(val); end
  def installed_as_middleware; end
  def installed_as_middleware=(val); end
  def log_level; end
  def log_level=(val); end
  def max_age; end
  def max_age=(val); end
  def middleware_checks; end
  def middleware_checks=(val); end
  def origin_ip_whitelist; end
  def origin_ip_whitelist=(val); end
  def rabbitmq_config; end
  def rabbitmq_config=(val); end
  def redis_password; end
  def redis_password=(val); end
  def redis_url; end
  def redis_url=(val); end
  def smtp_timeout; end
  def smtp_timeout=(val); end
  def standard_checks; end
  def standard_checks=(val); end
  def success; end
  def success=(val); end
  def success_callbacks; end
  def success_callbacks=(val); end
  def uri; end
  def uri=(val); end

  class << self
    def accept_proxied_requests; end
    def accept_proxied_requests=(val); end
    def add_custom_check(name = T.unsafe(nil), &block); end
    def basic_auth_password; end
    def basic_auth_password=(val); end
    def basic_auth_username; end
    def basic_auth_username=(val); end
    def buckets; end
    def buckets=(val); end
    def custom_checks; end
    def custom_checks=(val); end
    def failure; end
    def failure=(val); end
    def failure_callbacks; end
    def failure_callbacks=(val); end
    def full_checks; end
    def full_checks=(val); end
    def http_status_for_error_object; end
    def http_status_for_error_object=(val); end
    def http_status_for_error_text; end
    def http_status_for_error_text=(val); end
    def http_status_for_ip_whitelist_error; end
    def http_status_for_ip_whitelist_error=(val); end
    def include_error_in_response_body; end
    def include_error_in_response_body=(val); end
    def installed_as_middleware; end
    def installed_as_middleware=(val); end
    def log_level; end
    def log_level=(val); end
    def max_age; end
    def max_age=(val); end
    def middleware_checks; end
    def middleware_checks=(val); end
    def on_failure(&block); end
    def on_success(&block); end
    def origin_ip_whitelist; end
    def origin_ip_whitelist=(val); end
    def rabbitmq_config; end
    def rabbitmq_config=(val); end
    def redis_password; end
    def redis_password=(val); end
    def redis_url; end
    def redis_url=(val); end
    def setup; end
    def smtp_timeout; end
    def smtp_timeout=(val); end
    def standard_checks; end
    def standard_checks=(val); end
    def success; end
    def success=(val); end
    def success_callbacks; end
    def success_callbacks=(val); end
    def uri; end
    def uri=(val); end
  end
end

class HealthCheck::ElasticsearchHealthCheck
  extend ::BaseHealthCheck

  class << self
    def check; end
  end
end

class HealthCheck::Engine < ::Rails::Engine
  def routes_explicitly_defined; end
  def routes_explicitly_defined=(val); end

  class << self
    def routes_explicitly_defined; end
    def routes_explicitly_defined=(val); end
  end
end

class HealthCheck::HealthCheckController < ::ActionController::Base
  def index; end

  protected

  def authenticate; end
  def check_origin_ip; end
  def protect_against_forgery?; end
  def send_response(healthy, msg, text_status, obj_status); end

  private

  def _layout(lookup_context, formats); end

  class << self
    def __callbacks; end
    def _layout; end
    def _layout_conditions; end
    def middleware_stack; end
  end
end

class HealthCheck::MiddlewareHealthcheck
  def initialize(app); end

  def call(env); end

  protected

  def ip_blocked(env); end
  def not_authenticated(env); end
  def parse_env(env); end
end

class HealthCheck::MiddlewareHealthcheck::Request < ::Rack::Auth::AbstractRequest
  def basic?; end
  def credentials; end
  def password; end
  def username; end
end

class HealthCheck::RabbitMQHealthCheck
  extend ::BaseHealthCheck

  class << self
    def check; end
  end
end

class HealthCheck::RedisHealthCheck
  extend ::BaseHealthCheck

  class << self
    def check; end
    def client; end
  end
end

class HealthCheck::ResqueHealthCheck
  extend ::BaseHealthCheck

  class << self
    def check; end
  end
end

class HealthCheck::S3HealthCheck
  extend ::BaseHealthCheck

  class << self
    def check; end

    private

    def D(bucket); end
    def R(bucket); end
    def W(bucket); end
    def aws_s3_client; end
    def configure_client; end
  end
end

class HealthCheck::SidekiqHealthCheck
  extend ::BaseHealthCheck

  class << self
    def check; end
  end
end

class HealthCheck::Utils
  def default_smtp_settings; end
  def default_smtp_settings=(val); end

  class << self
    def check_cache; end
    def check_email; end
    def check_sendmail(settings); end
    def check_smtp(settings, timeout); end
    def db_migrate_path; end
    def db_migrate_path=(value); end
    def default_smtp_settings; end
    def default_smtp_settings=(val); end
    def get_database_version; end
    def get_migration_version(dir = T.unsafe(nil)); end
    def mailer_configured?; end
    def process_checks(checks, called_from_middleware = T.unsafe(nil)); end
  end
end

HealthCheck::VERSION = T.let(T.unsafe(nil), String)
