# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `notiffany` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Notiffany
  class << self
    def connect(options = T.unsafe(nil)); end
  end
end

class Notiffany::Notifier
  def initialize(opts); end

  def active?; end
  def available; end
  def config; end
  def disconnect; end
  def enabled?; end
  def notify(message, message_opts = T.unsafe(nil)); end
  def turn_off; end
  def turn_on(options = T.unsafe(nil)); end

  private

  def _activate; end
  def _check_server!; end
  def _client?; end
  def _detect_or_add_notifiers; end
  def _env; end
  def _notification_wanted?; end
  def _turn_on_notifiers(options); end
end

class Notiffany::Notifier::Base
  def initialize(opts = T.unsafe(nil)); end

  def _image_path(image); end
  def name; end
  def notify(message, opts = T.unsafe(nil)); end
  def options; end
  def title; end

  private

  def _check_available(_options); end
  def _check_host_supported; end
  def _gem_name; end
  def _notification_type(image); end
  def _notify_options(overrides = T.unsafe(nil)); end
  def _perform_notify(_message, _opts); end
  def _require_gem; end
  def _supported_hosts; end
end

Notiffany::Notifier::Base::ERROR_ADD_GEM_AND_RUN_BUNDLE = T.let(T.unsafe(nil), String)
Notiffany::Notifier::Base::HOSTS = T.let(T.unsafe(nil), Hash)

class Notiffany::Notifier::Base::RequireFailed < ::Notiffany::Notifier::Base::UnavailableError
  def initialize(gem_name); end
end

class Notiffany::Notifier::Base::UnavailableError < ::RuntimeError
  def initialize(reason); end

  def message; end
end

class Notiffany::Notifier::Base::UnsupportedPlatform < ::Notiffany::Notifier::Base::UnavailableError
  def initialize; end
end

class Notiffany::Notifier::Config
  def initialize(opts); end

  def env_namespace; end
  def logger; end
  def notifiers; end
  def notify?; end

  private

  def _setup_logger(opts); end
end

Notiffany::Notifier::Config::DEFAULTS = T.let(T.unsafe(nil), Hash)

class Notiffany::Notifier::Detected
  def initialize(supported, env_namespace, logger); end

  def add(name, opts); end
  def available; end
  def detect; end
  def reset; end

  private

  def _add(name, opts); end
  def _notifiers; end
  def _to_module(name); end
end

Notiffany::Notifier::Detected::NO_SUPPORTED_NOTIFIERS = T.let(T.unsafe(nil), String)
class Notiffany::Notifier::Detected::NoneAvailableError < ::RuntimeError; end

class Notiffany::Notifier::Detected::UnknownNotifier < ::RuntimeError
  def initialize(name); end

  def message; end
  def name; end
end

class Notiffany::Notifier::Emacs < ::Notiffany::Notifier::Base
  private

  def _check_available(options); end
  def _emacs_color(type, options = T.unsafe(nil)); end
  def _erb_for(filename); end
  def _gem_name; end
  def _perform_notify(message, opts = T.unsafe(nil)); end
end

class Notiffany::Notifier::Emacs::Client
  def initialize(options); end

  def available?; end
  def elisp_erb; end
  def notify(color, bgcolor, message = T.unsafe(nil)); end

  private

  def _emacs_eval(env, code); end
end

class Notiffany::Notifier::Emacs::Client::Elisp < ::ERB
  def initialize(code, color, bgcolor, message); end

  def bgcolor; end
  def color; end
  def message; end
  def result; end
end

Notiffany::Notifier::Emacs::DEFAULTS = T.let(T.unsafe(nil), Hash)
Notiffany::Notifier::Emacs::DEFAULT_ELISP_ERB = T.let(T.unsafe(nil), String)

class Notiffany::Notifier::Env < ::Nenv::Environment
  def notify?; end
  def notify_active=(raw_value); end
  def notify_active?; end
  def notify_pid; end
  def notify_pid=(raw_value); end
end

class Notiffany::Notifier::File < ::Notiffany::Notifier::Base
  private

  def _check_available(opts = T.unsafe(nil)); end
  def _gem_name; end
  def _perform_notify(message, opts = T.unsafe(nil)); end
end

Notiffany::Notifier::File::DEFAULTS = T.let(T.unsafe(nil), Hash)

class Notiffany::Notifier::GNTP < ::Notiffany::Notifier::Base
  def _check_available(_opts); end
  def _gem_name; end
  def _perform_notify(message, opts = T.unsafe(nil)); end
  def _supported_hosts; end

  private

  def _gntp_client(opts = T.unsafe(nil)); end
end

Notiffany::Notifier::GNTP::CLIENT_DEFAULTS = T.let(T.unsafe(nil), Hash)
Notiffany::Notifier::GNTP::DEFAULTS = T.let(T.unsafe(nil), Hash)

class Notiffany::Notifier::Growl < ::Notiffany::Notifier::Base
  def _check_available(_opts = T.unsafe(nil)); end
  def _perform_notify(message, opts = T.unsafe(nil)); end
  def _supported_hosts; end
end

Notiffany::Notifier::Growl::DEFAULTS = T.let(T.unsafe(nil), Hash)
Notiffany::Notifier::Growl::INSTALL_GROWLNOTIFY = T.let(T.unsafe(nil), String)

class Notiffany::Notifier::Libnotify < ::Notiffany::Notifier::Base
  private

  def _check_available(_opts = T.unsafe(nil)); end
  def _perform_notify(message, opts = T.unsafe(nil)); end
  def _supported_hosts; end
end

Notiffany::Notifier::Libnotify::DEFAULTS = T.let(T.unsafe(nil), Hash)
Notiffany::Notifier::NOTIFICATIONS_DISABLED = T.let(T.unsafe(nil), String)
class Notiffany::Notifier::NotServer < ::RuntimeError; end

class Notiffany::Notifier::Notifu < ::Notiffany::Notifier::Base
  private

  def _check_available(_opts = T.unsafe(nil)); end
  def _gem_name; end
  def _notifu_type(type); end
  def _perform_notify(message, opts = T.unsafe(nil)); end
  def _supported_hosts; end
end

Notiffany::Notifier::Notifu::DEFAULTS = T.let(T.unsafe(nil), Hash)

class Notiffany::Notifier::NotifySend < ::Notiffany::Notifier::Base
  private

  def _check_available(_opts = T.unsafe(nil)); end
  def _gem_name; end
  def _notifysend_urgency(type); end
  def _perform_notify(message, opts = T.unsafe(nil)); end
  def _supported_hosts; end
  def _to_arguments(command, supported, opts = T.unsafe(nil)); end
end

Notiffany::Notifier::NotifySend::DEFAULTS = T.let(T.unsafe(nil), Hash)
Notiffany::Notifier::NotifySend::SUPPORTED = T.let(T.unsafe(nil), Array)
Notiffany::Notifier::ONLY_NOTIFY = T.let(T.unsafe(nil), String)
Notiffany::Notifier::SUPPORTED = T.let(T.unsafe(nil), Array)

class Notiffany::Notifier::TerminalNotifier < ::Notiffany::Notifier::Base
  def _check_available(_opts = T.unsafe(nil)); end
  def _gem_name; end
  def _perform_notify(message, opts = T.unsafe(nil)); end
  def _supported_hosts; end
end

Notiffany::Notifier::TerminalNotifier::DEFAULTS = T.let(T.unsafe(nil), Hash)
Notiffany::Notifier::TerminalNotifier::ERROR_ONLY_OSX10 = T.let(T.unsafe(nil), String)

class Notiffany::Notifier::TerminalTitle < ::Notiffany::Notifier::Base
  def turn_off; end

  private

  def _check_available(_options); end
  def _gem_name; end
  def _perform_notify(message, opts = T.unsafe(nil)); end
end

Notiffany::Notifier::TerminalTitle::DEFAULTS = T.let(T.unsafe(nil), Hash)

class Notiffany::Notifier::Tmux < ::Notiffany::Notifier::Base
  def turn_off; end
  def turn_on; end

  private

  def _check_available(opts = T.unsafe(nil)); end
  def _gem_name; end
  def _perform_notify(message, options = T.unsafe(nil)); end

  class << self
    def _end_session; end
    def _session; end
    def _start_session; end
  end
end

class Notiffany::Notifier::Tmux::Client
  def initialize(client); end

  def clients; end
  def display_message(message); end
  def display_time=(time); end
  def message_bg=(color); end
  def message_fg=(color); end
  def parse_options; end
  def set(key, value); end
  def title=(string); end
  def unset(key, value); end

  private

  def _all_args_for(key, value, client); end
  def _capture(*args); end
  def _parse_option(line); end
  def _run(*args); end

  class << self
    def _capture(*args); end
    def _run(*args); end
    def version; end
  end
end

Notiffany::Notifier::Tmux::Client::CLIENT = T.let(T.unsafe(nil), String)
Notiffany::Notifier::Tmux::DEFAULTS = T.let(T.unsafe(nil), Hash)
Notiffany::Notifier::Tmux::ERROR_ANCIENT_TMUX = T.let(T.unsafe(nil), String)
Notiffany::Notifier::Tmux::ERROR_NOT_INSIDE_TMUX = T.let(T.unsafe(nil), String)
class Notiffany::Notifier::Tmux::Error < ::RuntimeError; end

class Notiffany::Notifier::Tmux::Notification
  def initialize(type, options); end

  def colorize(locations); end
  def display_message(title, message); end
  def display_title(title, message); end

  private

  def _message_for(title, message); end
  def _value_for(field); end
  def client; end
  def color; end
  def message_color; end
  def options; end
  def separator; end
  def type; end
end

class Notiffany::Notifier::Tmux::Session
  def initialize; end

  def close; end
end

Notiffany::Notifier::USING_NOTIFIER = T.let(T.unsafe(nil), String)

class Notiffany::Notifier::YamlEnvStorage < ::Nenv::Environment
  def notifiers; end
  def notifiers=(raw_value); end
end
