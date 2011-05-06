begin
  require 'rubygems'
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

# Easily print methods local to an object's class
class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end
