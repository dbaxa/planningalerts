# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `ffi` gem.
# Please instead update this file by running `bin/tapioca gem ffi`.

# typed: true

module FFI
  class << self
    def add_typedef(old, add); end
    def errno; end
    def errno=(error); end
    def find_type(name, type_map = T.unsafe(nil)); end
    def map_library_name(lib); end
    def type_size(type); end
    def typedef(old, add); end
  end
end

class FFI::AbstractMemory
  def [](_arg0); end
  def __copy_from__(_arg0, _arg1); end
  def clear; end
  def get(_arg0, _arg1); end
  def get_array_of_char(_arg0, _arg1); end
  def get_array_of_double(_arg0, _arg1); end
  def get_array_of_float(_arg0, _arg1); end
  def get_array_of_float32(_arg0, _arg1); end
  def get_array_of_float64(_arg0, _arg1); end
  def get_array_of_int(_arg0, _arg1); end
  def get_array_of_int16(_arg0, _arg1); end
  def get_array_of_int32(_arg0, _arg1); end
  def get_array_of_int64(_arg0, _arg1); end
  def get_array_of_int8(_arg0, _arg1); end
  def get_array_of_long(_arg0, _arg1); end
  def get_array_of_long_long(_arg0, _arg1); end
  def get_array_of_pointer(_arg0, _arg1); end
  def get_array_of_short(_arg0, _arg1); end
  def get_array_of_string(*_arg0); end
  def get_array_of_uchar(_arg0, _arg1); end
  def get_array_of_uint(_arg0, _arg1); end
  def get_array_of_uint16(_arg0, _arg1); end
  def get_array_of_uint32(_arg0, _arg1); end
  def get_array_of_uint64(_arg0, _arg1); end
  def get_array_of_uint8(_arg0, _arg1); end
  def get_array_of_ulong(_arg0, _arg1); end
  def get_array_of_ulong_long(_arg0, _arg1); end
  def get_array_of_ushort(_arg0, _arg1); end
  def get_bytes(_arg0, _arg1); end
  def get_char(_arg0); end
  def get_double(_arg0); end
  def get_float(_arg0); end
  def get_float32(_arg0); end
  def get_float64(_arg0); end
  def get_int(_arg0); end
  def get_int16(_arg0); end
  def get_int32(_arg0); end
  def get_int64(_arg0); end
  def get_int8(_arg0); end
  def get_long(_arg0); end
  def get_long_long(_arg0); end
  def get_pointer(_arg0); end
  def get_short(_arg0); end
  def get_string(*_arg0); end
  def get_uchar(_arg0); end
  def get_uint(_arg0); end
  def get_uint16(_arg0); end
  def get_uint32(_arg0); end
  def get_uint64(_arg0); end
  def get_uint8(_arg0); end
  def get_ulong(_arg0); end
  def get_ulong_long(_arg0); end
  def get_ushort(_arg0); end
  def put(_arg0, _arg1, _arg2); end
  def put_array_of_char(_arg0, _arg1); end
  def put_array_of_double(_arg0, _arg1); end
  def put_array_of_float(_arg0, _arg1); end
  def put_array_of_float32(_arg0, _arg1); end
  def put_array_of_float64(_arg0, _arg1); end
  def put_array_of_int(_arg0, _arg1); end
  def put_array_of_int16(_arg0, _arg1); end
  def put_array_of_int32(_arg0, _arg1); end
  def put_array_of_int64(_arg0, _arg1); end
  def put_array_of_int8(_arg0, _arg1); end
  def put_array_of_long(_arg0, _arg1); end
  def put_array_of_long_long(_arg0, _arg1); end
  def put_array_of_pointer(_arg0, _arg1); end
  def put_array_of_short(_arg0, _arg1); end
  def put_array_of_uchar(_arg0, _arg1); end
  def put_array_of_uint(_arg0, _arg1); end
  def put_array_of_uint16(_arg0, _arg1); end
  def put_array_of_uint32(_arg0, _arg1); end
  def put_array_of_uint64(_arg0, _arg1); end
  def put_array_of_uint8(_arg0, _arg1); end
  def put_array_of_ulong(_arg0, _arg1); end
  def put_array_of_ulong_long(_arg0, _arg1); end
  def put_array_of_ushort(_arg0, _arg1); end
  def put_bytes(*_arg0); end
  def put_char(_arg0, _arg1); end
  def put_double(_arg0, _arg1); end
  def put_float(_arg0, _arg1); end
  def put_float32(_arg0, _arg1); end
  def put_float64(_arg0, _arg1); end
  def put_int(_arg0, _arg1); end
  def put_int16(_arg0, _arg1); end
  def put_int32(_arg0, _arg1); end
  def put_int64(_arg0, _arg1); end
  def put_int8(_arg0, _arg1); end
  def put_long(_arg0, _arg1); end
  def put_long_long(_arg0, _arg1); end
  def put_pointer(_arg0, _arg1); end
  def put_short(_arg0, _arg1); end
  def put_string(_arg0, _arg1); end
  def put_uchar(_arg0, _arg1); end
  def put_uint(_arg0, _arg1); end
  def put_uint16(_arg0, _arg1); end
  def put_uint32(_arg0, _arg1); end
  def put_uint64(_arg0, _arg1); end
  def put_uint8(_arg0, _arg1); end
  def put_ulong(_arg0, _arg1); end
  def put_ulong_long(_arg0, _arg1); end
  def put_ushort(_arg0, _arg1); end
  def read_array_of_char(_arg0); end
  def read_array_of_double(_arg0); end
  def read_array_of_float(_arg0); end
  def read_array_of_int(_arg0); end
  def read_array_of_int16(_arg0); end
  def read_array_of_int32(_arg0); end
  def read_array_of_int64(_arg0); end
  def read_array_of_int8(_arg0); end
  def read_array_of_long(_arg0); end
  def read_array_of_long_long(_arg0); end
  def read_array_of_pointer(_arg0); end
  def read_array_of_short(_arg0); end
  def read_array_of_uchar(_arg0); end
  def read_array_of_uint(_arg0); end
  def read_array_of_uint16(_arg0); end
  def read_array_of_uint32(_arg0); end
  def read_array_of_uint64(_arg0); end
  def read_array_of_uint8(_arg0); end
  def read_array_of_ulong(_arg0); end
  def read_array_of_ulong_long(_arg0); end
  def read_array_of_ushort(_arg0); end
  def read_bytes(_arg0); end
  def read_char; end
  def read_double; end
  def read_float; end
  def read_int; end
  def read_int16; end
  def read_int32; end
  def read_int64; end
  def read_int8; end
  def read_long; end
  def read_long_long; end
  def read_pointer; end
  def read_short; end
  def read_uchar; end
  def read_uint; end
  def read_uint16; end
  def read_uint32; end
  def read_uint64; end
  def read_uint8; end
  def read_ulong; end
  def read_ulong_long; end
  def read_ushort; end
  def size; end
  def size_limit?; end
  def total; end
  def type_size; end
  def write_array_of_char(_arg0); end
  def write_array_of_double(_arg0); end
  def write_array_of_float(_arg0); end
  def write_array_of_int(_arg0); end
  def write_array_of_int16(_arg0); end
  def write_array_of_int32(_arg0); end
  def write_array_of_int64(_arg0); end
  def write_array_of_int8(_arg0); end
  def write_array_of_long(_arg0); end
  def write_array_of_long_long(_arg0); end
  def write_array_of_pointer(_arg0); end
  def write_array_of_short(_arg0); end
  def write_array_of_uchar(_arg0); end
  def write_array_of_uint(_arg0); end
  def write_array_of_uint16(_arg0); end
  def write_array_of_uint32(_arg0); end
  def write_array_of_uint64(_arg0); end
  def write_array_of_uint8(_arg0); end
  def write_array_of_ulong(_arg0); end
  def write_array_of_ulong_long(_arg0); end
  def write_array_of_ushort(_arg0); end
  def write_bytes(*_arg0); end
  def write_char(_arg0); end
  def write_double(_arg0); end
  def write_float(_arg0); end
  def write_int(_arg0); end
  def write_int16(_arg0); end
  def write_int32(_arg0); end
  def write_int64(_arg0); end
  def write_int8(_arg0); end
  def write_long(_arg0); end
  def write_long_long(_arg0); end
  def write_pointer(_arg0); end
  def write_short(_arg0); end
  def write_uchar(_arg0); end
  def write_uint(_arg0); end
  def write_uint16(_arg0); end
  def write_uint32(_arg0); end
  def write_uint64(_arg0); end
  def write_uint8(_arg0); end
  def write_ulong(_arg0); end
  def write_ulong_long(_arg0); end
  def write_ushort(_arg0); end
end

FFI::AbstractMemory::LONG_MAX = T.let(T.unsafe(nil), Integer)

class FFI::ArrayType < ::FFI::Type
  def initialize(_arg0, _arg1); end

  def elem_type; end
  def length; end
end

class FFI::AutoPointer < ::FFI::Pointer
  extend ::FFI::DataConverter

  def initialize(ptr, proc = T.unsafe(nil), &block); end

  def autorelease=(autorelease); end
  def autorelease?; end
  def free; end

  class << self
    def from_native(val, ctx); end
    def native_type; end
  end
end

class FFI::AutoPointer::CallableReleaser < ::FFI::AutoPointer::Releaser
  def release(ptr); end
end

class FFI::AutoPointer::DefaultReleaser < ::FFI::AutoPointer::Releaser
  def release(ptr); end
end

class FFI::AutoPointer::Releaser
  def initialize(ptr, proc); end

  def autorelease; end
  def autorelease=(_arg0); end
  def call(*args); end
  def free; end
end

class FFI::Bitmask < ::FFI::Enum
  def initialize(*args); end

  def [](*query); end
  def from_native(val, ctx); end
  def to_native(query, ctx); end
end

class FFI::Buffer < ::FFI::AbstractMemory
  def initialize(*_arg0); end

  def +(_arg0); end
  def inspect; end
  def length; end
  def order(*_arg0); end
  def slice(_arg0, _arg1); end

  private

  def initialize_copy(_arg0); end

  class << self
    def alloc_in(*_arg0); end
    def alloc_inout(*_arg0); end
    def alloc_out(*_arg0); end
    def new_in(*_arg0); end
    def new_inout(*_arg0); end
    def new_out(*_arg0); end
  end
end

FFI::CURRENT_PROCESS = T.let(T.unsafe(nil), Object)
FFI::CallbackInfo = FFI::FunctionType

module FFI::DataConverter
  def from_native(value, ctx); end
  def native_type(type = T.unsafe(nil)); end
  def to_native(value, ctx); end
end

class FFI::DynamicLibrary
  def initialize(_arg0, _arg1); end

  def find_function(_arg0); end
  def find_symbol(_arg0); end
  def find_variable(_arg0); end
  def last_error; end
  def name; end

  class << self
    def last_error; end
    def open(_arg0, _arg1); end
  end
end

FFI::DynamicLibrary::RTLD_ALL_MASK = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_BINDING_MASK = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_DEEPBIND = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_FIRST = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_GLOBAL = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_LAZY = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_LOCAL = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_LOCATION_MASK = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_MEMBER = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_NODELETE = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_NOLOAD = T.let(T.unsafe(nil), Integer)
FFI::DynamicLibrary::RTLD_NOW = T.let(T.unsafe(nil), Integer)

class FFI::DynamicLibrary::Symbol < ::FFI::Pointer
  def inspect; end

  private

  def initialize_copy(_arg0); end
end

class FFI::Enum
  include ::FFI::DataConverter

  def initialize(*args); end

  def [](query); end
  def find(query); end
  def from_native(val, ctx); end
  def native_type; end
  def symbol_map; end
  def symbols; end
  def tag; end
  def to_h; end
  def to_hash; end
  def to_native(val, ctx); end
end

class FFI::Enums
  def initialize; end

  def <<(enum); end
  def __map_symbol(symbol); end
  def find(query); end
end

class FFI::Function < ::FFI::Pointer
  def initialize(*_arg0); end

  def attach(_arg0, _arg1); end
  def autorelease; end
  def autorelease=(_arg0); end
  def autorelease?; end
  def call(*_arg0); end
  def free; end

  private

  def initialize_copy(_arg0); end
end

FFI::FunctionInfo = FFI::FunctionType

class FFI::FunctionType < ::FFI::Type
  def initialize(*_arg0); end

  def param_types; end
  def result_type; end
end

module FFI::IO
  class << self
    def for_fd(fd, mode = T.unsafe(nil)); end
    def native_read(io, buf, len); end
  end
end

module FFI::LastError
  private

  def error; end
  def error=(_arg0); end

  class << self
    def error; end
    def error=(_arg0); end
  end
end

module FFI::Library
  def attach_function(name, func, args, returns = T.unsafe(nil), options = T.unsafe(nil)); end
  def attach_variable(mname, a1, a2 = T.unsafe(nil)); end
  def bitmask(*args); end
  def callback(*args); end
  def enum(*args); end
  def enum_type(name); end
  def enum_value(symbol); end
  def ffi_convention(convention = T.unsafe(nil)); end
  def ffi_lib(*names); end
  def ffi_lib_flags(*flags); end
  def ffi_libraries; end
  def find_type(t); end
  def function_names(name, arg_types); end
  def typedef(old, add, info = T.unsafe(nil)); end

  private

  def generic_enum(klass, *args); end

  class << self
    def extended(mod); end
  end
end

FFI::Library::CURRENT_PROCESS = T.let(T.unsafe(nil), Object)
FFI::Library::FlagsMap = T.let(T.unsafe(nil), Hash)
FFI::Library::LIBC = T.let(T.unsafe(nil), String)

class FFI::ManagedStruct < ::FFI::Struct
  def initialize(pointer = T.unsafe(nil)); end
end

class FFI::MemoryPointer < ::FFI::Pointer
  def initialize(*_arg0); end

  class << self
    def from_string(_arg0); end
  end
end

FFI::NativeLibrary = FFI::DynamicLibrary
module FFI::NativeType; end
FFI::NativeType::BOOL = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::BUFFER_IN = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::BUFFER_INOUT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::BUFFER_OUT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::FLOAT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::FLOAT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::INT16 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::INT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::INT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::INT8 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::LONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::LONGDOUBLE = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::POINTER = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::STRING = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::UINT16 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::UINT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::UINT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::UINT8 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::ULONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::VARARGS = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::NativeType::VOID = T.let(T.unsafe(nil), FFI::Type::Builtin)

class FFI::NotFoundError < ::LoadError
  def initialize(function, *libraries); end
end

class FFI::NullPointerError < ::RuntimeError; end

module FFI::Platform
  class << self
    def bsd?; end
    def is_os(os); end
    def mac?; end
    def solaris?; end
    def unix?; end
    def windows?; end
  end
end

FFI::Platform::ADDRESS_ALIGN = T.let(T.unsafe(nil), Integer)
FFI::Platform::ADDRESS_SIZE = T.let(T.unsafe(nil), Integer)
FFI::Platform::ARCH = T.let(T.unsafe(nil), String)
FFI::Platform::BIG_ENDIAN = T.let(T.unsafe(nil), Integer)
FFI::Platform::BYTE_ORDER = T.let(T.unsafe(nil), Integer)
FFI::Platform::CONF_DIR = T.let(T.unsafe(nil), String)
FFI::Platform::CPU = T.let(T.unsafe(nil), String)
FFI::Platform::DOUBLE_ALIGN = T.let(T.unsafe(nil), Integer)
FFI::Platform::DOUBLE_SIZE = T.let(T.unsafe(nil), Integer)
FFI::Platform::FLOAT_ALIGN = T.let(T.unsafe(nil), Integer)
FFI::Platform::FLOAT_SIZE = T.let(T.unsafe(nil), Integer)
FFI::Platform::GNU_LIBC = T.let(T.unsafe(nil), String)
FFI::Platform::INT16_ALIGN = T.let(T.unsafe(nil), Integer)
FFI::Platform::INT16_SIZE = T.let(T.unsafe(nil), Integer)
FFI::Platform::INT32_ALIGN = T.let(T.unsafe(nil), Integer)
FFI::Platform::INT32_SIZE = T.let(T.unsafe(nil), Integer)
FFI::Platform::INT64_ALIGN = T.let(T.unsafe(nil), Integer)
FFI::Platform::INT64_SIZE = T.let(T.unsafe(nil), Integer)
FFI::Platform::INT8_ALIGN = T.let(T.unsafe(nil), Integer)
FFI::Platform::INT8_SIZE = T.let(T.unsafe(nil), Integer)
FFI::Platform::IS_GNU = T.let(T.unsafe(nil), String)
FFI::Platform::IS_LINUX = T.let(T.unsafe(nil), TrueClass)
FFI::Platform::LIBC = T.let(T.unsafe(nil), String)
FFI::Platform::LIBPREFIX = T.let(T.unsafe(nil), String)
FFI::Platform::LIBSUFFIX = T.let(T.unsafe(nil), String)
FFI::Platform::LITTLE_ENDIAN = T.let(T.unsafe(nil), Integer)
FFI::Platform::LONG_ALIGN = T.let(T.unsafe(nil), Integer)
FFI::Platform::LONG_DOUBLE_ALIGN = T.let(T.unsafe(nil), Integer)
FFI::Platform::LONG_DOUBLE_SIZE = T.let(T.unsafe(nil), Integer)
FFI::Platform::LONG_SIZE = T.let(T.unsafe(nil), Integer)
FFI::Platform::NAME = T.let(T.unsafe(nil), String)
FFI::Platform::OS = T.let(T.unsafe(nil), String)
FFI::Platform::OSVERSION = T.let(T.unsafe(nil), Integer)
class FFI::PlatformError < ::LoadError; end

class FFI::Pointer < ::FFI::AbstractMemory
  def initialize(*_arg0); end

  def +(_arg0); end
  def ==(_arg0); end
  def address; end
  def autorelease=(_arg0); end
  def autorelease?; end
  def free; end
  def inspect; end
  def null?; end
  def order(*_arg0); end
  def read(type); end
  def read_array_of_type(type, reader, length); end
  def read_string(len = T.unsafe(nil)); end
  def read_string_length(len); end
  def read_string_to_null; end
  def slice(_arg0, _arg1); end
  def to_i; end
  def to_ptr; end
  def to_s; end
  def type_size; end
  def write(type, value); end
  def write_array_of_type(type, writer, ary); end
  def write_string(str, len = T.unsafe(nil)); end
  def write_string_length(str, len); end

  private

  def initialize_copy(_arg0); end

  class << self
    def size; end
  end
end

FFI::Pointer::NULL = T.let(T.unsafe(nil), FFI::Pointer)
FFI::Pointer::SIZE = T.let(T.unsafe(nil), Integer)
FFI::SizeTypes = T.let(T.unsafe(nil), Hash)

class FFI::StrPtrConverter
  extend ::FFI::DataConverter

  class << self
    def from_native(val, ctx); end
  end
end

class FFI::Struct
  def initialize(*_arg0); end

  def [](_arg0); end
  def []=(_arg0, _arg1); end
  def align; end
  def alignment; end
  def clear; end
  def layout; end
  def members; end
  def null?; end
  def offset_of(name); end
  def offsets; end
  def order(*_arg0); end
  def pointer; end
  def size; end
  def to_ptr; end
  def values; end

  private

  def initialize_copy(_arg0); end
  def layout=(_arg0); end
  def pointer=(_arg0); end

  class << self
    def alignment; end
    def alloc_in(*_arg0); end
    def alloc_inout(*_arg0); end
    def alloc_out(*_arg0); end
    def auto_ptr; end
    def by_ref(flags = T.unsafe(nil)); end
    def by_value; end
    def in; end
    def layout(*spec); end
    def members; end
    def new_in(*_arg0); end
    def new_inout(*_arg0); end
    def new_out(*_arg0); end
    def offset_of(name); end
    def offsets; end
    def out; end
    def ptr(flags = T.unsafe(nil)); end
    def size; end
    def size=(size); end
    def val; end

    protected

    def align(alignment = T.unsafe(nil)); end
    def aligned(alignment = T.unsafe(nil)); end
    def callback(params, ret); end
    def enclosing_module; end
    def find_field_type(type, mod = T.unsafe(nil)); end
    def find_type(type, mod = T.unsafe(nil)); end
    def pack(packed = T.unsafe(nil)); end
    def packed(packed = T.unsafe(nil)); end

    private

    def array_layout(builder, spec); end
    def hash_layout(builder, spec); end
  end
end

class FFI::Struct::InlineArray
  include ::Enumerable

  def initialize(_arg0, _arg1); end

  def [](_arg0); end
  def []=(_arg0, _arg1); end
  def each; end
  def size; end
  def to_a; end
  def to_ptr; end
end

class FFI::Struct::ManagedStructConverter < ::FFI::StructByReference
  def initialize(struct_class); end

  def from_native(ptr, ctx); end
end

class FFI::StructByReference
  include ::FFI::DataConverter

  def initialize(struct_class); end

  def from_native(value, ctx); end
  def native_type; end
  def struct_class; end
  def to_native(value, ctx); end
end

class FFI::StructByValue < ::FFI::Type
  def initialize(_arg0); end

  def layout; end
  def struct_class; end
end

class FFI::StructLayout < ::FFI::Type
  def initialize(_arg0, _arg1, _arg2); end

  def [](_arg0); end
  def __union!; end
  def fields; end
  def members; end
  def offset_of(field_name); end
  def offsets; end
  def to_a; end
end

class FFI::StructLayout::Array < ::FFI::StructLayout::Field
  def get(_arg0); end
  def put(_arg0, _arg1); end
end

class FFI::StructLayout::CharArray < ::FFI::Struct::InlineArray
  def to_s; end
  def to_str; end
end

class FFI::StructLayout::Enum < ::FFI::StructLayout::Field
  def get(ptr); end
  def put(ptr, value); end
end

class FFI::StructLayout::Field
  def initialize(*_arg0); end

  def alignment; end
  def get(_arg0); end
  def name; end
  def offset; end
  def put(_arg0, _arg1); end
  def size; end
  def type; end
end

class FFI::StructLayout::Function < ::FFI::StructLayout::Field
  def get(_arg0); end
  def put(_arg0, _arg1); end
end

class FFI::StructLayout::InnerStruct < ::FFI::StructLayout::Field
  def get(ptr); end
  def put(ptr, value); end
end

class FFI::StructLayout::Mapped < ::FFI::StructLayout::Field
  def initialize(name, offset, type, orig_field); end

  def get(ptr); end
  def put(ptr, value); end
end

class FFI::StructLayout::Number < ::FFI::StructLayout::Field; end
class FFI::StructLayout::Pointer < ::FFI::StructLayout::Field; end
class FFI::StructLayout::String < ::FFI::StructLayout::Field; end

class FFI::StructLayoutBuilder
  def initialize; end

  def add(name, type, offset = T.unsafe(nil)); end
  def add_array(name, type, count, offset = T.unsafe(nil)); end
  def add_field(name, type, offset = T.unsafe(nil)); end
  def add_struct(name, type, offset = T.unsafe(nil)); end
  def alignment; end
  def alignment=(align); end
  def build; end
  def packed=(packed); end
  def size; end
  def size=(size); end
  def union=(is_union); end
  def union?; end

  private

  def align(offset, align); end
  def field_for_type(name, offset, type); end
end

FFI::StructLayoutBuilder::NUMBER_TYPES = T.let(T.unsafe(nil), Array)
FFI::TYPE_BOOL = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_BUFFER_IN = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_BUFFER_INOUT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_BUFFER_OUT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_FLOAT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_FLOAT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_INT16 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_INT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_INT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_INT8 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_LONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_LONGDOUBLE = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_POINTER = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_STRING = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_UINT16 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_UINT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_UINT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_UINT8 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_ULONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_VARARGS = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TYPE_VOID = T.let(T.unsafe(nil), FFI::Type::Builtin)

class FFI::Type
  def initialize(_arg0); end

  def alignment; end
  def inspect; end
  def size; end
end

FFI::Type::Array = FFI::ArrayType
FFI::Type::BOOL = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::BUFFER_IN = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::BUFFER_INOUT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::BUFFER_OUT = T.let(T.unsafe(nil), FFI::Type::Builtin)

class FFI::Type::Builtin < ::FFI::Type
  def inspect; end
end

FFI::Type::CHAR = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::DOUBLE = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::FLOAT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::FLOAT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::FLOAT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::Function = FFI::FunctionType
FFI::Type::INT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::INT16 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::INT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::INT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::INT8 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::LONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::LONGDOUBLE = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::LONG_LONG = T.let(T.unsafe(nil), FFI::Type::Builtin)

class FFI::Type::Mapped < ::FFI::Type
  def initialize(_arg0); end

  def from_native(*_arg0); end
  def native_type; end
  def to_native(*_arg0); end
  def type; end
end

FFI::Type::POINTER = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::SCHAR = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::SHORT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::SINT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::SLONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::SLONG_LONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::SSHORT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::STRING = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::Struct = FFI::StructByValue
FFI::Type::UCHAR = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::UINT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::UINT16 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::UINT32 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::UINT64 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::UINT8 = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::ULONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::ULONG_LONG = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::USHORT = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::VARARGS = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::Type::VOID = T.let(T.unsafe(nil), FFI::Type::Builtin)
FFI::TypeDefs = T.let(T.unsafe(nil), Hash)
FFI::USE_THIS_PROCESS_AS_LIBRARY = T.let(T.unsafe(nil), Object)

class FFI::Union < ::FFI::Struct
  class << self
    def builder; end
  end
end

FFI::VERSION = T.let(T.unsafe(nil), String)

class FFI::VariadicInvoker
  def initialize(_arg0, _arg1, _arg2, _arg3); end

  def attach(mod, mname); end
  def call(*args, &block); end
  def invoke(_arg0, _arg1); end
end
