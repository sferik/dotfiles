begin
  require 'rubygems'
rescue Exception => ex
  warn "Warning in .irbrc: #{ex.inspect}"
end

begin
  require 'term/ansicolor'
  include Term::ANSIColor
  rvm = %x(~/.rvm/bin/rvm-prompt).chomp
  IRB.conf[:PROMPT][:CUSTOM] = {
    :PROMPT_I => "#{red(bold(rvm))} > ",
    :PROMPT_S => "#{red(bold(rvm))} %l> ",
    :PROMPT_C => "#{red(bold(rvm))} > ",
    :PROMPT_N => "#{red(bold(rvm))} ?> ",
    :PROMPT_N => "  ",
    :RETURN => " => %s \n",
    :AUTO_INDENT => true,
  }
  IRB.conf[:PROMPT_MODE] = :CUSTOM
rescue Exception => ex
  warn "Warning in .irbrc: #{ex.inspect}"
end

begin
  # Histories
  require 'irb/ext/save-history'
  IRB.conf[:SAVE_HISTORY] = 1000
  IRB.conf[:EVAL_HISTORY] = 100
rescue Exception => ex
  warn "Warning in .irbrc: #{ex.inspect}"
end

begin
  # Tab completion
  require 'irb/completion'
  IRB.conf[:USE_READLINE] = true
rescue Exception => ex
  warn "Warning in .irbrc: #{ex.inspect}"
end

begin
  require 'wirble'
  Wirble.init
  Wirble.colorize
rescue Exception => ex
  warn "Warning in .irbrc: #{ex.inspect}"
end

# Easily print methods local to an object's class
class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end
