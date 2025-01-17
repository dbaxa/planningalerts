# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `compass-blueprint` gem.
# Please instead update this file by running `bin/tapioca gem compass-blueprint`.

# typed: true

module Compass
  extend ::Compass::HasDeprecatedConstantsFromCore
  extend ::Compass::Version
  extend ::QuickCache
  extend ::Compass::Configuration::Helpers

  private

  def base_directory; end
  def lib_directory; end
  def shared_extension_paths; end

  class << self
    def add_configuration(data, filename = T.unsafe(nil)); end
    def base_directory; end
    def configuration; end
    def const_missing(const_name); end
    def default_configuration; end
    def deprojectize(path, project_path = T.unsafe(nil)); end
    def discover_extensions!; end
    def discover_gem_extensions!; end
    def lib_directory; end
    def projectize(path, project_path = T.unsafe(nil)); end
    def reset_configuration!; end
    def shared_extension_paths; end
  end
end

module Compass::Blueprint; end
Compass::Blueprint::VERSION = T.let(T.unsafe(nil), String)
Compass::VERSION = T.let(T.unsafe(nil), String)
Compass::VERSION_DETAILS = T.let(T.unsafe(nil), Hash)
Compass::VERSION_NAME = T.let(T.unsafe(nil), String)
