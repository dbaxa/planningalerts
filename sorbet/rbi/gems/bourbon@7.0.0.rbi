# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `bourbon` gem.
# Please instead update this file by running `bin/tapioca gem bourbon`.

# typed: true

module Bourbon; end
class Bourbon::Engine < ::Rails::Engine; end

class Bourbon::Generator < ::Thor
  def install; end
  def update; end
  def version; end

  private

  def all_stylesheets; end
  def bourbon_files_already_exist?; end
  def copy_in_scss_files; end
  def install_files; end
  def install_path; end
  def make_install_directory; end
  def remove_bourbon_directory; end
  def stylesheets_directory; end
  def top_level_directory; end
end

Bourbon::VERSION = T.let(T.unsafe(nil), String)
