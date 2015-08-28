set -g fish_greeting ''

set -x EDITOR (which vim)
set -x NODE_PATH /usr/local/lib/node_modules
set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/sbin $PATH
set -x PATH /usr/local/share/npm/bin $PATH
set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $HOME/.rbenv/shims $PATH
set -x PATH $HOME/bin $PATH
set -x RUBYGEMS_EC2_DB1 ec2-54-245-133-190.us-west-2.compute.amazonaws.com
set -x RUBYGEMS_EC2_LB1 54.245.255.174
