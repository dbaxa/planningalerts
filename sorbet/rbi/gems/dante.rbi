# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dante/all/dante.rbi
#
# dante-0.2.0

module Dante
  def self.run(name, options = nil, &blk); end
end
class Dante::Runner
  def daemon_running?; end
  def daemon_stopped?; end
  def daemonize; end
  def description; end
  def description=(arg0); end
  def execute(opts = nil, &block); end
  def initialize(name, defaults = nil, &block); end
  def interrupt; end
  def kill_pid(k = nil); end
  def log(message); end
  def name; end
  def name=(arg0); end
  def options; end
  def options=(arg0); end
  def parse_options; end
  def redirect_output!; end
  def restart; end
  def self.run(*args, &block); end
  def start; end
  def stop(kill_arg = nil); end
  def store_pid(pid); end
  def until_true(timeout_seconds, interval = nil, &block); end
  def verify_options_hook; end
  def verify_options_hook=(arg0); end
  def with_options(&block); end
end