#!/bin/sh

LOCAL_REPO="${HOME}/.vim_runtime"

if [ ! -d "$LOCAL_REPO" ]; then
  git clone https://github.com/ninichat/vimrc "$LOCAL_REPO"
else
  cd "$LOCAL_REPO"
  git pull
  cd -
fi
sh "${LOCAL_REPO}/install_awesome_vimrc.sh"
