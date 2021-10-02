# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `will_paginate` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

class Array
  include(::Enumerable)
  include(::JSON::Ext::Generator::GeneratorMethods::Array)
  include(::MessagePack::CoreExt)

  def paginate(options = T.unsafe(nil)); end
end

module WillPaginate
  extend(::WillPaginate::PerPage)

  class << self
    def PageNumber(value, name = T.unsafe(nil)); end
  end
end

class WillPaginate::Collection < ::Array
  include(::WillPaginate::CollectionMethods)

  def initialize(page, per_page = T.unsafe(nil), total = T.unsafe(nil)); end

  def current_page; end
  def offset; end
  def per_page; end
  def replace(array); end
  def total_entries; end
  def total_entries=(number); end

  class << self
    def create(page, per_page, total = T.unsafe(nil)); end
  end
end

module WillPaginate::CollectionMethods
  def next_page; end
  def out_of_bounds?; end
  def previous_page; end
  def total_pages; end
end

module WillPaginate::I18n
  def will_paginate_translate(keys, options = T.unsafe(nil), &block); end

  class << self
    def load_path; end
    def locale_dir; end
  end
end

module WillPaginate::InvalidPage
end

class WillPaginate::PageNumber < ::Numeric
  extend(::Forwardable)

  def initialize(value, name); end

  def *(*args, &block); end
  def +(*args, &block); end
  def -(*args, &block); end
  def /(*args, &block); end
  def <=>(*args, &block); end
  def ==(*args, &block); end
  def coerce(*args, &block); end
  def inspect; end
  def is_a?(klass); end
  def kind_of?(klass); end
  def to_i; end
  def to_json(*args, &block); end
  def to_offset(per_page); end
  def to_s(*args, &block); end
end

WillPaginate::PageNumber::BIGINT = T.let(T.unsafe(nil), Integer)

module WillPaginate::PerPage
  def per_page; end
  def per_page=(limit); end

  class << self
    def extended(base); end
  end
end

module WillPaginate::PerPage::Inheritance
  def inherited(subclass); end
end

class WillPaginate::Railtie < ::Rails::Railtie
  class << self
    def setup_actioncontroller; end
  end
end

module WillPaginate::Railtie::ControllerRescuePatch
  def rescue_from(*args, **kwargs, &block); end
end

module WillPaginate::Railtie::ShowExceptionsPatch
  extend(::ActiveSupport::Concern)

  def status_code_with_paginate(exception = T.unsafe(nil)); end
end
