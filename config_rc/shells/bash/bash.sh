#!/bin/sh

LOCAL_REPO="${HOME}/.bash"

if [ ! -d "$LOCAL_REPO" ]; then
  git clone git@github.com:ninichat/bashrc.git "$LOCAL_REPO"
else
  cd "$LOCAL_REPO"
  git pull
  cd -
fi
ln -sf "${LOCAL_REPO}/init" "${HOME}/.bashrc"
