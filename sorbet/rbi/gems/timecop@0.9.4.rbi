# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `timecop` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

class Timecop
  include(::Singleton)
  extend(::Singleton::SingletonClassMethods)

  def initialize; end


  private

  def baseline; end
  def baseline=(b); end
  def return(&block); end
  def return_to_baseline; end
  def set_baseline(b); end
  def set_stack(s); end
  def stack; end
  def thread_safe; end
  def thread_safe=(t); end
  def travel(mock_type, *args, &block); end
  def unmock!; end

  class << self
    def baseline; end
    def baseline=(baseline); end
    def freeze(*args, &block); end
    def frozen?; end
    def instance; end
    def return(&block); end
    def return_to_baseline; end
    def safe_mode=(safe); end
    def safe_mode?; end
    def scale(*args, &block); end
    def thread_safe; end
    def thread_safe=(t); end
    def top_stack_item; end
    def travel(*args, &block); end
    def unfreeze(&block); end

    private

    def send_travel(mock_type, *args, &block); end
  end
end

class Timecop::SafeModeException < ::StandardError
  def initialize; end
end

class Timecop::TimeStackItem
  def initialize(mock_type, *args); end

  def date(date_klass = T.unsafe(nil)); end
  def datetime(datetime_klass = T.unsafe(nil)); end
  def day; end
  def hour; end
  def min; end
  def mock_type; end
  def month; end
  def scaled_time; end
  def scaling_factor; end
  def sec; end
  def time(time_klass = T.unsafe(nil)); end
  def travel_offset; end
  def travel_offset_days; end
  def utc_offset; end
  def year; end

  private

  def compute_travel_offset; end
  def parse_time(*args); end
  def rational_to_utc_offset(rational); end
  def time_klass; end
  def times_are_equal_within_epsilon(t1, t2, epsilon_in_seconds); end
  def utc_offset_to_rational(utc_offset); end
end

Timecop::VERSION = T.let(T.unsafe(nil), String)
