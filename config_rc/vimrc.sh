#!/bin/sh

LOCAL_REPO="${HOME}/.config/nvim"

if [ ! -d "$LOCAL_REPO" ]; then
  git clone https://github.com/ninichat/config-nvim "$LOCAL_REPO"
else
  cd "$LOCAL_REPO"
  git pull
  cd -
fi
