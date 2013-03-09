export EDITOR=`which vim`
export INPUTRC="~/.inputrc"
export MAKE_OPTS="-j 4"
export NODE_PATH="/usr/local/lib/node_modules"
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:~/.rbenv/bin:$PATH"
# Whenever displaying the prompt, write the previous line to disk.
export PROMPT_COMMAND="history -a"
export RUBYGEMS_EC2_DB1=ec2-54-245-133-190.us-west-2.compute.amazonaws.com
export RUBYGEMS_EC2_LB1=54.245.255.174

# Source global definitions
[[ -s "/etc/bashrc" ]] && source "/etc/bashrc"

# Source global aliases
[[ -s "$HOME/.aliases.sh" ]] && source "$HOME/.aliases.sh"

# Bash completion
[[ -s `brew --prefix`/etc/bash_completion ]] && source `brew --prefix`/etc/bash_completion

# Git completion
[[ -s "$HOME/.git-completion.sh" ]] && source "$HOME/.git-completion.sh"

# Autojump
[[ -s `brew --prefix`/etc/autojump ]] && source `brew --prefix`/etc/autojump

# Init rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# Ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# Autofix typos
shopt -s cdspell

# Check the window size after each command and, if necessary,
# Update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Make Bash append rather than overwrite the history on disk.
shopt -s histappend

# Make 'less' more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  # We have color support; assume it's compliant with Ecma-48
  # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
  # a case would tend to support setf rather than setaf.)
  color_prompt=yes
else
  color_prompt=
fi

function parse_git_deleted {
  [[ $(git status 2> /dev/null | grep deleted:) != "" ]] && echo "-"
}
function parse_git_added {
  [[ $(git status 2> /dev/null | grep "Untracked files:") != "" ]] && echo '+'
}
function parse_git_modified {
  [[ $(git status 2> /dev/null | grep modified:) != "" ]] && echo "*"
}
function parse_git_dirty {
  # [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "☠"
  echo "$(parse_git_added)$(parse_git_modified)$(parse_git_deleted)"
}
function parse_git_branch {
  echo "$(parse_git_dirty)$(__git_ps1 '%s')"
}

export LSCOLORS='Exfxcxdxbxegedabagacad'

if [ "$color_prompt" = yes ]; then
  PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\u@\H \[$(tput setaf 4)\]\w\[$(tput setaf 3)\] \$(parse_git_branch)\[$(tput sgr0)\]\n\[$(tput bold)\]\[$(tput setaf 1)\]\$(rbenv version-name) \[$(tput sgr0)\]> "
else
  PS1="\u@\H \w \$(parse_git_branch)\n\$(rbenv version-name) > "
fi
unset color_prompt
