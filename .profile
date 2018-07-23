echo "profile"
export _MY_PROFILE_LOADED_=true

PROXY_HOST=`cat .proxyHost`
nslookup -timeout=1 $PROXY_HOST &>/dev/null
LOOKUP_SUCCESS=$?

if [[ -d ~/.dotfiles ]]
then
  pushd ~/.dotfiles
  [[ -r .host ]] && source .host
  if [[ $LOOKUP_SUCCESS -eq 0 ]]
  then
    [[ -r .proxy ]] && source .proxy
  else
    [[ -r .noproxy ]] && source .noproxy
  fi
  [[ -r .options ]] && source .options
  [[ -r .env_history ]] && source .env_history
  [[ -r .cvs_m ]] && source .cvs_m
  [[ -r .path ]] && source .path
  [[ -r .npm ]] && source .npm
  [[ -r .rvm ]] && source .rvm
  popd
fi
