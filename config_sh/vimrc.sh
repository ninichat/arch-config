#!/bin/sh

LOCAL_REPO="${HOME}/.vim_runtime"

if [ ! -d "$LOCAL_REPO" ]; then
  git clone --depth=1 git@github.com:ninichat/vimrc.git "$LOCAL_REPO"
else
  cd "$LOCAL_REPO"
  git stash
  git pull --depth=1
  git stash pop
  cd -
fi
sh "${LOCAL_REPO}/install_awesome_vimrc.sh"
