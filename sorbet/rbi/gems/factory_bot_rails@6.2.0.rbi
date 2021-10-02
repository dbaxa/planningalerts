# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `factory_bot_rails` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module FactoryBotRails
end

class FactoryBotRails::DefinitionFilePaths
  def initialize(definition_file_paths); end

  def any?; end
  def directories; end
  def files; end
end

class FactoryBotRails::Generator
  def initialize(config); end

  def factory_bot_disabled?; end
  def generator; end
  def rails_options; end
  def run; end
  def test_framework; end
end

module FactoryBotRails::Generators
end

class FactoryBotRails::Generators::NonRSpecGenerator
  def initialize(generators); end

  def run; end

  private

  def test_framework; end
end

class FactoryBotRails::Generators::NullGenerator
  def initialize(generators); end

  def run; end
end

class FactoryBotRails::Generators::RSpecGenerator
  def initialize(generators); end

  def run; end

  private

  def factory_bot_directory; end
  def factory_bot_options; end
  def fixture_replacement_setting; end
end

class FactoryBotRails::Railtie < ::Rails::Railtie

  private

  def definition_file_paths; end
end

class FactoryBotRails::Reloader
  def initialize(app); end

  def run; end

  private

  def app; end
  def build_reloader; end
  def register_reloader(reloader); end
  def reloader_class; end
end
