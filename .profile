#
# ~/.profile
#

if [ -d "$HOME/.dots/enabled" ]
then
  for file in "$HOME/.dots/enabled/*"; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
  done
fi
