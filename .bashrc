#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# RVM bash completion
[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"

if [ -t 0 ]; then
  PS1='[\u@\h \W]\$ '
  alias ls='ls --color=auto -lah'
  alias vi='vim'
  alias sudo='sudo '

# Powerline
  if [ -f `which powerline-daemon` ]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bindings/bash/powerline.sh
  fi
fi
source /usr/share/nvm/init-nvm.sh

