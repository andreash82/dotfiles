#
# ~/.bashrc
#
echo "bashrc"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -z "$_MY_PROFILE_LOADED_" && -r .profile ]] && source .profile

# RVM bash completion
[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"

PS1='[\u@\h \W]\$ '
alias ls='ls --color=auto -lah'
alias vi='vim'
alias sudo='sudo '

# Powerline
if [ -f `which powerline-daemon` ]; then
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
fi

source /usr/share/nvm/init-nvm.sh

PATH="/home/ahohendo/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/ahohendo/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/ahohendo/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/ahohendo/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ahohendo/perl5"; export PERL_MM_OPT;
