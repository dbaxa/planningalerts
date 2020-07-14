# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/lumberjack/all/lumberjack.rbi
#
# lumberjack-1.2.6

module Lumberjack
  def self.context; end
  def self.context?; end
  def self.context_tags; end
  def self.tag(tags); end
  def self.unit_of_work(id = nil); end
  def self.unit_of_work_id; end
end
module Lumberjack::Severity
  def self.label_to_level(label); end
  def self.level_to_label(severity); end
end
class Lumberjack::Formatter
  def add(klass, formatter = nil, &block); end
  def call(severity, timestamp, progname, msg); end
  def clear; end
  def format(message); end
  def formatter_for(klass); end
  def initialize; end
  def remove(klass); end
  def self.empty; end
end
class Lumberjack::Formatter::DateTimeFormatter
  def call(obj); end
  def format; end
  def initialize(format = nil); end
end
class Lumberjack::Formatter::ExceptionFormatter
  def backtrace_cleaner; end
  def backtrace_cleaner=(arg0); end
  def call(exception); end
  def clean_backtrace(trace); end
  def initialize(backtrace_cleaner = nil); end
end
class Lumberjack::Formatter::IdFormatter
  def call(obj); end
  def initialize(id_attribute = nil); end
end
class Lumberjack::Formatter::InspectFormatter
  def call(obj); end
end
class Lumberjack::Formatter::ObjectFormatter
  def call(obj); end
end
class Lumberjack::Formatter::PrettyPrintFormatter
  def call(obj); end
  def initialize(width = nil); end
  def width; end
  def width=(arg0); end
end
class Lumberjack::Formatter::StringFormatter
  def call(obj); end
end
class Lumberjack::Formatter::StripFormatter
  def call(obj); end
end
class Lumberjack::Formatter::StructuredFormatter
  def call(obj); end
  def call_with_references(obj, references); end
  def initialize(formatter = nil); end
  def with_object_reference(obj, references); end
end
class Lumberjack::Formatter::StructuredFormatter::RecusiveReferenceError < StandardError
end
class Lumberjack::Context
  def [](key); end
  def []=(key, value); end
  def initialize(parent_context = nil); end
  def reset; end
  def tag(tags); end
  def tags; end
end
class Lumberjack::LogEntry
  def initialize(time, severity, message, progname, pid, tags); end
  def inspect; end
  def message; end
  def message=(arg0); end
  def pid; end
  def pid=(arg0); end
  def progname; end
  def progname=(arg0); end
  def severity; end
  def severity=(arg0); end
  def severity_label; end
  def tag(name); end
  def tags; end
  def tags=(arg0); end
  def tags_to_s; end
  def time; end
  def time=(arg0); end
  def to_s; end
  def unit_of_work_id; end
  def unit_of_work_id=(value); end
end
class Lumberjack::Device
  def cleanup_files!; end
  def close; end
  def datetime_format; end
  def datetime_format=(format); end
  def do_once(file); end
  def flush; end
  def reopen(logdev = nil); end
  def write(entry); end
end
class Lumberjack::Device::Writer < Lumberjack::Device
  def buffer_size; end
  def buffer_size=(value); end
  def close; end
  def datetime_format; end
  def datetime_format=(format); end
  def flush; end
  def initialize(stream, options = nil); end
  def stream; end
  def stream=(stream); end
  def write(entry); end
  def write_to_stream(lines); end
end
class Lumberjack::Device::Writer::Buffer
  def <<(string); end
  def clear; end
  def empty?; end
  def initialize; end
  def pop!; end
  def size; end
end
class Lumberjack::Device::LogFile < Lumberjack::Device::Writer
  def file_stream; end
  def initialize(path, options = nil); end
  def path; end
  def reopen(logdev = nil); end
end
class Lumberjack::Device::RollingLogFile < Lumberjack::Device::LogFile
  def after_roll; end
  def archive_file_suffix; end
  def before_flush; end
  def initialize(path, options = nil); end
  def keep; end
  def keep=(arg0); end
  def path; end
  def reopen_file; end
  def roll_file!; end
  def roll_file?; end
end
class Lumberjack::Device::DateRollingLogFile < Lumberjack::Device::RollingLogFile
  def after_roll; end
  def archive_file_suffix; end
  def initialize(path, options = nil); end
  def roll_file?; end
end
class Lumberjack::Device::SizeRollingLogFile < Lumberjack::Device::RollingLogFile
  def archive_file_suffix; end
  def initialize(path, options = nil); end
  def max_size; end
  def next_archive_number; end
  def roll_file?; end
end
class Lumberjack::Device::Multi < Lumberjack::Device
  def close; end
  def datetime_format; end
  def datetime_format=(format); end
  def flush; end
  def initialize(*devices); end
  def reopen(logdev = nil); end
  def write(entry); end
end
class Lumberjack::Device::Null < Lumberjack::Device
  def initialize(*args); end
  def write(entry); end
end
class Lumberjack::Logger
  def <<(msg); end
  def add(severity, message = nil, progname = nil, &block); end
  def add_entry(severity, message, progname = nil, tags = nil); end
  def call_add_entry(severity, message_or_progname_or_tags, progname_or_tags, &block); end
  def close; end
  def closed?; end
  def create_flusher_thread(flush_seconds); end
  def datetime_format; end
  def datetime_format=(format); end
  def debug!; end
  def debug(message_or_progname_or_tags = nil, progname_or_tags = nil, &block); end
  def debug?; end
  def device; end
  def device=(arg0); end
  def error!; end
  def error(message_or_progname_or_tags = nil, progname_or_tags = nil, &block); end
  def error?; end
  def fatal!; end
  def fatal(message_or_progname_or_tags = nil, progname_or_tags = nil, &block); end
  def fatal?; end
  def flush; end
  def formatter; end
  def formatter=(value); end
  def info!; end
  def info(message_or_progname_or_tags = nil, progname_or_tags = nil, &block); end
  def info?; end
  def initialize(device = nil, options = nil); end
  def last_flushed_at; end
  def level; end
  def level=(value); end
  def log(severity, message = nil, progname = nil, &block); end
  def open_device(device, options); end
  def progname; end
  def progname=(arg0); end
  def push_thread_local_value(name, value); end
  def remove_tag(*tag_names); end
  def reopen(logdev = nil); end
  def set_progname(value, &block); end
  def set_thread_local_value(name, value); end
  def sev_threshold; end
  def sev_threshold=(value); end
  def silence(temporary_level = nil, &block); end
  def silencer; end
  def silencer=(arg0); end
  def tag(tags, &block); end
  def tag_formatter; end
  def tag_formatter=(arg0); end
  def tagged_logger!; end
  def tags; end
  def thread_local_value(name); end
  def unknown(message_or_progname_or_tags = nil, progname_or_tags = nil, &block); end
  def warn!; end
  def warn(message_or_progname_or_tags = nil, progname_or_tags = nil, &block); end
  def warn?; end
  def write_to_device(entry); end
  include Lumberjack::Severity
end
class Lumberjack::Tags
  def self.expand_runtime_values(hash); end
  def self.stringify_keys(hash); end
end
class Lumberjack::TagFormatter
  def add(names, formatter = nil, &block); end
  def clear; end
  def default(formatter = nil, &block); end
  def dereference_formatter(formatter); end
  def format(tags); end
  def initialize; end
  def remove(names); end
  def remove_default; end
end
module Lumberjack::TaggedLoggerSupport
  def clear_tags!; end
  def pop_tags(size = nil); end
  def push_tags(*tags); end
  def tagged(*tags, &block); end
end
class Lumberjack::TaggedLoggerSupport::Formatter < Anonymous_Delegator_69
  def __formatter; end
  def clear_tags!(*args, &block); end
  def current_tags; end
  def initialize(formatter:, logger:); end
  def pop_tags(*args, &block); end
  def push_tags(*args, &block); end
  def tagged(*args, &block); end
  def tags_text; end
  extend Forwardable
end
module Lumberjack::TaggedLogging
  def self.included(base); end
end
module Lumberjack::TaggedLogging::ClassMethods
  def new(logger); end
end
module ActiveSupport::TaggedLogging
  include Lumberjack::TaggedLogging
end
class Lumberjack::Template
  def call(entry); end
  def compile(template); end
  def datetime_format; end
  def datetime_format=(format); end
  def initialize(first_line, options = nil); end
  def tag_args(tags, tag_vars); end
end
module Lumberjack::Rack
end
class Lumberjack::Rack::UnitOfWork
  def call(env); end
  def initialize(app); end
end
class Lumberjack::Rack::RequestId
  def call(env); end
  def initialize(app, abbreviated = nil); end
end
class Lumberjack::Rack::Context
  def call(env); end
  def initialize(app); end
end
