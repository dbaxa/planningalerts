# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `mini_racer` gem.
# Please instead update this file by running `bin/tapioca gem mini_racer`.

# typed: true

module MiniRacer; end

class MiniRacer::Context
  def initialize(max_memory: T.unsafe(nil), timeout: T.unsafe(nil), isolate: T.unsafe(nil), ensure_gc_after_idle: T.unsafe(nil), snapshot: T.unsafe(nil)); end

  def attach(name, callback); end
  def call(function_name, *arguments); end
  def dispose; end
  def dispose_unsafe; end
  def eval(str, options = T.unsafe(nil)); end
  def heap_stats; end
  def isolate; end
  def load(filename); end
  def stop; end
  def write_heap_snapshot(file_or_io); end
  def write_heap_snapshot_unsafe(_arg0); end

  private

  def assert_numeric_or_nil(option_name, object, min_value:); end
  def assert_option_is_nil_or_a(option_name, object, klass); end
  def call_unsafe(*_arg0); end
  def check_init_options!(isolate:, snapshot:, max_memory:, ensure_gc_after_idle:, timeout:); end
  def create_isolate_value; end
  def ensure_gc_thread; end
  def eval_unsafe(_arg0, _arg1); end
  def init_unsafe(_arg0, _arg1); end
  def isolate_mutex; end
  def stop_attached; end
  def timeout(&blk); end
end

class MiniRacer::Context::ExternalFunction
  def initialize(name, callback, parent); end

  private

  def notify_v8; end
end

class MiniRacer::ContextDisposedError < ::MiniRacer::Error; end
class MiniRacer::Error < ::StandardError; end
class MiniRacer::EvalError < ::MiniRacer::Error; end

class MiniRacer::FailedV8Conversion
  def initialize(info); end

  def info; end
end

class MiniRacer::Isolate
  def initialize(snapshot = T.unsafe(nil)); end

  def idle_notification(_arg0); end
  def low_memory_notification; end
  def pump_message_loop; end

  private

  def init_with_snapshot(_arg0); end
end

class MiniRacer::JavaScriptFunction
  def to_s; end
end

MiniRacer::LIBV8_NODE_VERSION = T.let(T.unsafe(nil), String)

module MiniRacer::Loader
  class << self
    def load(_arg0); end
  end
end

class MiniRacer::ParseError < ::MiniRacer::EvalError; end

class MiniRacer::Platform
  class << self
    def set_flag_as_str!(_arg0); end
    def set_flags!(*args, **kwargs); end

    private

    def flag_to_string(flag); end
    def flags_to_strings(flags); end
  end
end

class MiniRacer::PlatformAlreadyInitialized < ::MiniRacer::Error; end

class MiniRacer::RuntimeError < ::MiniRacer::EvalError
  def initialize(message); end

  def backtrace; end
end

class MiniRacer::ScriptTerminatedError < ::MiniRacer::EvalError; end

class MiniRacer::Snapshot
  def initialize(str = T.unsafe(nil)); end

  def dump; end
  def size; end
  def warmup!(src); end
  def warmup_unsafe!(_arg0); end

  private

  def load(_arg0); end
end

class MiniRacer::SnapshotError < ::MiniRacer::Error; end
class MiniRacer::V8OutOfMemoryError < ::MiniRacer::EvalError; end
MiniRacer::VERSION = T.let(T.unsafe(nil), String)
