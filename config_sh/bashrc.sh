#!/bin/sh

LOCAL_REPO="${HOME}/.bash"

if [ ! -d "$LOCAL_REPO" ]; then
  git clone --depth=1 https://github.com/jaivardhankapoor/bestbash "$LOCAL_REPO"
else
  cd "$LOCAL_REPO"
  git stash
  git pull --depth=1
  git stash pop
  cd -
fi
ln -sf "${LOCAL_REPO}/init" "${HOME}/.bashrc"

SRC_PATH=$(dirname "$0")

# Custom aliases
cp "${SRC_PATH}/custom_alias" "${LOCAL_REPO}/custom_alias"

echo "source ${LOCAL_REPO}/custom_alias" >> "${HOME}/.bashrc"
