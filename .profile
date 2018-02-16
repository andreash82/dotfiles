echo "profile"
export _MY_PROFILE_LOADED_=true

if [[ -d ~/.dotfiles ]]
then
  pushd ~/.dotfiles
  [[ -r .host ]] && source .host
  [[ -r .proxy ]] && source .proxy
  [[ -r .options ]] && source .options
  [[ -r .env_history ]] && source .env_history
  [[ -r .cvs_m ]] && source .cvs_m
  [[ -r .path ]] && source .path
  [[ -r .npm ]] && source .npm
  [[ -r .rvm ]] && source .rvm
  popd
fi
