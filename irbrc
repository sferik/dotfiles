begin
  require 'rubygems'

  # Histories
  require 'irb/ext/save-history'
  IRB.conf[:SAVE_HISTORY] = 1000
  IRB.conf[:EVAL_HISTORY] = 100

  # Tab completion
  require 'irb/completion'
  IRB.conf[:USE_READLINE] = true

  # Easily print methods local to an object's class
  class Object
    def local_methods
      (methods - Object.instance_methods).sort
    end
  end
rescue Object => ex
  warn "Warning in .irbrc: #{ex.inspect}"
end
