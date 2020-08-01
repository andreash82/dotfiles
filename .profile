PROXY_HOST=`cat .proxyHost`
nslookup -timeout=1 $PROXY_HOST &>/dev/null
LOOKUP_SUCCESS=$?

PATH="/home/ahohendo/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/ahohendo/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/ahohendo/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/ahohendo/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ahohendo/perl5"; export PERL_MM_OPT;


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
