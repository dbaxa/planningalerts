# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `lumberjack` gem.
# Please instead update this file by running `bin/tapioca gem lumberjack`.

# typed: true

module Lumberjack
  class << self
    def context(&block); end
    def context?; end
    def context_tags; end
    def tag(tags); end
    def unit_of_work(id = T.unsafe(nil)); end
    def unit_of_work_id; end
    def use_context(context, &block); end
  end
end

class Lumberjack::Context
  def initialize(parent_context = T.unsafe(nil)); end

  def [](key); end
  def []=(key, value); end
  def reset; end
  def tag(tags); end
  def tags; end
end

class Lumberjack::Device
  def cleanup_files!; end
  def close; end
  def datetime_format; end
  def datetime_format=(format); end
  def do_once(file); end
  def flush; end
  def reopen(logdev = T.unsafe(nil)); end
  def write(entry); end
end

class Lumberjack::Device::DateRollingLogFile < ::Lumberjack::Device::RollingLogFile
  def initialize(path, options = T.unsafe(nil)); end

  def archive_file_suffix; end
  def roll_file?; end

  protected

  def after_roll; end
end

class Lumberjack::Device::LogFile < ::Lumberjack::Device::Writer
  def initialize(path, options = T.unsafe(nil)); end

  def path; end
  def reopen(logdev = T.unsafe(nil)); end

  private

  def file_stream; end
end

Lumberjack::Device::LogFile::EXTERNAL_ENCODING = T.let(T.unsafe(nil), String)

class Lumberjack::Device::Multi < ::Lumberjack::Device
  def initialize(*devices); end

  def close; end
  def datetime_format; end
  def datetime_format=(format); end
  def flush; end
  def reopen(logdev = T.unsafe(nil)); end
  def write(entry); end
end

class Lumberjack::Device::Null < ::Lumberjack::Device
  def initialize(*args); end

  def write(entry); end
end

class Lumberjack::Device::RollingLogFile < ::Lumberjack::Device::LogFile
  def initialize(path, options = T.unsafe(nil)); end

  def archive_file_suffix; end
  def keep; end
  def keep=(_arg0); end
  def path; end
  def roll_file!; end
  def roll_file?; end

  protected

  def after_roll; end
  def before_flush; end

  private

  def reopen_file; end
end

class Lumberjack::Device::SizeRollingLogFile < ::Lumberjack::Device::RollingLogFile
  def initialize(path, options = T.unsafe(nil)); end

  def archive_file_suffix; end
  def max_size; end
  def roll_file?; end

  protected

  def next_archive_number; end
end

class Lumberjack::Device::Writer < ::Lumberjack::Device
  def initialize(stream, options = T.unsafe(nil)); end

  def buffer_size; end
  def buffer_size=(value); end
  def close; end
  def datetime_format; end
  def datetime_format=(format); end
  def flush; end
  def write(entry); end

  protected

  def stream; end
  def stream=(_arg0); end

  private

  def write_to_stream(lines); end
end

class Lumberjack::Device::Writer::Buffer
  def initialize; end

  def <<(string); end
  def clear; end
  def empty?; end
  def pop!; end
  def size; end
end

Lumberjack::Device::Writer::DEFAULT_ADDITIONAL_LINES_TEMPLATE = T.let(T.unsafe(nil), String)
Lumberjack::Device::Writer::DEFAULT_FIRST_LINE_TEMPLATE = T.let(T.unsafe(nil), String)

class Lumberjack::Formatter
  def initialize; end

  def add(klass, formatter = T.unsafe(nil), &block); end
  def call(severity, timestamp, progname, msg); end
  def clear; end
  def format(message); end
  def remove(klass); end

  private

  def formatter_for(klass); end

  class << self
    def empty; end
  end
end

class Lumberjack::Formatter::DateTimeFormatter
  def initialize(format = T.unsafe(nil)); end

  def call(obj); end
  def format; end
end

class Lumberjack::Formatter::ExceptionFormatter
  def initialize(backtrace_cleaner = T.unsafe(nil)); end

  def backtrace_cleaner; end
  def backtrace_cleaner=(_arg0); end
  def call(exception); end

  private

  def clean_backtrace(trace); end
end

class Lumberjack::Formatter::IdFormatter
  def initialize(id_attribute = T.unsafe(nil)); end

  def call(obj); end
end

class Lumberjack::Formatter::InspectFormatter
  def call(obj); end
end

class Lumberjack::Formatter::ObjectFormatter
  def call(obj); end
end

class Lumberjack::Formatter::PrettyPrintFormatter
  def initialize(width = T.unsafe(nil)); end

  def call(obj); end
  def width; end
  def width=(_arg0); end
end

class Lumberjack::Formatter::StringFormatter
  def call(obj); end
end

class Lumberjack::Formatter::StripFormatter
  def call(obj); end
end

class Lumberjack::Formatter::StructuredFormatter
  def initialize(formatter = T.unsafe(nil)); end

  def call(obj); end

  private

  def call_with_references(obj, references); end
  def with_object_reference(obj, references); end
end

class Lumberjack::Formatter::StructuredFormatter::RecusiveReferenceError < ::StandardError; end
Lumberjack::LINE_SEPARATOR = T.let(T.unsafe(nil), String)

class Lumberjack::LogEntry
  def initialize(time, severity, message, progname, pid, tags); end

  def inspect; end
  def message; end
  def message=(_arg0); end
  def pid; end
  def pid=(_arg0); end
  def progname; end
  def progname=(_arg0); end
  def severity; end
  def severity=(_arg0); end
  def severity_label; end
  def tag(name); end
  def tags; end
  def tags=(_arg0); end
  def time; end
  def time=(_arg0); end
  def to_s; end
  def unit_of_work_id; end
  def unit_of_work_id=(value); end

  private

  def tags_to_s; end
end

Lumberjack::LogEntry::TIME_FORMAT = T.let(T.unsafe(nil), String)
Lumberjack::LogEntry::UNIT_OF_WORK_ID = T.let(T.unsafe(nil), String)

class Lumberjack::Logger
  include ::Lumberjack::Severity

  def initialize(device = T.unsafe(nil), options = T.unsafe(nil)); end

  def <<(msg); end
  def add(severity, message = T.unsafe(nil), progname = T.unsafe(nil), &block); end
  def add_entry(severity, message, progname = T.unsafe(nil), tags = T.unsafe(nil)); end
  def close; end
  def closed?; end
  def datetime_format; end
  def datetime_format=(format); end
  def debug(message_or_progname_or_tags = T.unsafe(nil), progname_or_tags = T.unsafe(nil), &block); end
  def debug!; end
  def debug?; end
  def device; end
  def device=(_arg0); end
  def error(message_or_progname_or_tags = T.unsafe(nil), progname_or_tags = T.unsafe(nil), &block); end
  def error!; end
  def error?; end
  def fatal(message_or_progname_or_tags = T.unsafe(nil), progname_or_tags = T.unsafe(nil), &block); end
  def fatal!; end
  def fatal?; end
  def flush; end
  def formatter; end
  def formatter=(value); end
  def info(message_or_progname_or_tags = T.unsafe(nil), progname_or_tags = T.unsafe(nil), &block); end
  def info!; end
  def info?; end
  def last_flushed_at; end
  def level; end
  def level=(value); end
  def log(severity, message = T.unsafe(nil), progname = T.unsafe(nil), &block); end
  def progname; end
  def progname=(_arg0); end
  def remove_tag(*tag_names); end
  def reopen(logdev = T.unsafe(nil)); end
  def set_progname(value, &block); end
  def sev_threshold; end
  def sev_threshold=(value); end
  def silence(temporary_level = T.unsafe(nil), &block); end
  def silencer; end
  def silencer=(_arg0); end
  def tag(tags, &block); end
  def tag_formatter; end
  def tag_formatter=(_arg0); end
  def tagged_logger!; end
  def tags; end
  def unknown(message_or_progname_or_tags = T.unsafe(nil), progname_or_tags = T.unsafe(nil), &block); end
  def untagged(&block); end
  def warn(message_or_progname_or_tags = T.unsafe(nil), progname_or_tags = T.unsafe(nil), &block); end
  def warn!; end
  def warn?; end

  private

  def call_add_entry(severity, message_or_progname_or_tags, progname_or_tags, &block); end
  def create_flusher_thread(flush_seconds); end
  def open_device(device, options); end
  def push_thread_local_value(name, value); end
  def set_thread_local_value(name, value); end
  def thread_local_value(name); end
  def write_to_device(entry); end
end

module Lumberjack::Rack; end

class Lumberjack::Rack::Context
  def initialize(app); end

  def call(env); end
end

class Lumberjack::Rack::RequestId
  def initialize(app, abbreviated = T.unsafe(nil)); end

  def call(env); end
end

Lumberjack::Rack::RequestId::REQUEST_ID = T.let(T.unsafe(nil), String)

class Lumberjack::Rack::UnitOfWork
  def initialize(app); end

  def call(env); end
end

module Lumberjack::Severity
  class << self
    def label_to_level(label); end
    def level_to_label(severity); end
  end
end

Lumberjack::Severity::DEBUG = T.let(T.unsafe(nil), Integer)
Lumberjack::Severity::ERROR = T.let(T.unsafe(nil), Integer)
Lumberjack::Severity::FATAL = T.let(T.unsafe(nil), Integer)
Lumberjack::Severity::INFO = T.let(T.unsafe(nil), Integer)
Lumberjack::Severity::SEVERITY_LABELS = T.let(T.unsafe(nil), Array)
Lumberjack::Severity::UNKNOWN = T.let(T.unsafe(nil), Integer)
Lumberjack::Severity::WARN = T.let(T.unsafe(nil), Integer)

class Lumberjack::TagFormatter
  def initialize; end

  def add(names, formatter = T.unsafe(nil), &block); end
  def clear; end
  def default(formatter = T.unsafe(nil), &block); end
  def format(tags); end
  def remove(names); end
  def remove_default; end

  private

  def dereference_formatter(formatter); end
end

module Lumberjack::TaggedLoggerSupport
  def clear_tags!; end
  def pop_tags(size = T.unsafe(nil)); end
  def push_tags(*tags); end
  def tagged(*tags, &block); end
end

class Lumberjack::TaggedLoggerSupport::Formatter
  extend ::Forwardable

  def initialize(formatter:, logger:); end

  def __formatter; end
  def clear_tags!(*args, &block); end
  def current_tags; end
  def pop_tags(*args, &block); end
  def push_tags(*args, &block); end
  def tagged(*args, &block); end
  def tags_text; end
end

module Lumberjack::TaggedLogging
  mixes_in_class_methods ::Lumberjack::TaggedLogging::ClassMethods

  class << self
    def included(base); end
  end
end

module Lumberjack::TaggedLogging::ClassMethods
  def new(logger); end
end

class Lumberjack::Tags
  class << self
    def expand_runtime_values(hash); end
    def stringify_keys(hash); end
  end
end

class Lumberjack::Template
  def initialize(first_line, options = T.unsafe(nil)); end

  def call(entry); end
  def datetime_format; end
  def datetime_format=(format); end

  private

  def compile(template); end
  def tag_args(tags, tag_vars); end
end

Lumberjack::Template::MICROSECOND_TIME_FORMAT = T.let(T.unsafe(nil), String)
Lumberjack::Template::MILLISECOND_TIME_FORMAT = T.let(T.unsafe(nil), String)
Lumberjack::Template::PLACEHOLDER_PATTERN = T.let(T.unsafe(nil), Regexp)
Lumberjack::Template::TEMPLATE_ARGUMENT_ORDER = T.let(T.unsafe(nil), Array)
