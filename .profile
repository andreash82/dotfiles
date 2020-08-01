#
# ~/.profile
#

if [ -d "$HOME/.dots/enabled" ]
then
  for file in "$HOME/.dots/enabled"/*; do
    [ -r "$file" ] && source "$file";
  done
fi
