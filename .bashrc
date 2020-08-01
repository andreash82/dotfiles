#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d "$HOME/.dots/rc/enabled" ]
then
  for file in "$HOME/.dots/rc/enabled/*"; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
  done
fi

