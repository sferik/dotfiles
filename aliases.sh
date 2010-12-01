alias ll="/bin/ls -AFGHhl"
alias ls="/bin/ls -FGH"
alias 186="rvm use 1.8.6"
alias 187="echo Yeah, and you don\'t stop. Cause it\'s 187 on an undercover cop.; rvm use 1.8.7"
alias 191="rvm use 1.9.1"
alias 192="rvm use 1.9.2"
rubies=(ironruby jruby macruby maglev mput rbx ree)
for ruby in ${rubies[@]}
do
  alias $ruby="rvm use $ruby"
done
alias update_gems="rvm system && gem update && gem cleanup && rvm use 1.8.6 && gem update && gem cleanup && rvm use 1.8.7 && gem update && gem cleanup && rvm use 1.9.1 && gem update && gem cleanup && rvm use 1.9.2 && gem update && gem cleanup && rvm use jruby && gem update && gem cleanup && rvm use rbx && gem update && gem cleanup && rvm use ree && gem update && gem cleanup"
alias update_ports="sudo port selfupdate && sudo port upgrade outdated && sudo port uninstall inactive"
alias ssbg="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background"
alias sort_history="history | cut -c 8- | sort | uniq -c | sort -rn"
