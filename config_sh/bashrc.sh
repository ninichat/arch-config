#!/bin/sh

LOCAL_REPO="~/.bash"

if [ ! -d "$LOCAL_REPO" ]; then
  git clone --depth=1 https://github.com/jaivardhankapoor/bestbash "$LOCAL_REPO"
else
  cd "$LOCAL_REPO"
  git stash
  git pull --depth=1
  git stash pop
  cd -
fi
ln -sf ~/.bash/init ~/.bashrc

SRC_PATH=$(dirname "$0")

# Custom aliases
cp "${SRC_PATH}/custom_alias" ~/.bash/custom_alias

echo "source ~/.bash/custom_alias" >> ~/.bashrc
