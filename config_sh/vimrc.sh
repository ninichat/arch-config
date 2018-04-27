#!/bin/sh

LOCAL_REPO="~/.vim_runtime"

if [ ! -d "$LOCAL_REPO" ]; then
  git clone --depth=1 https://github.com/amix/vimrc.git "$LOCAL_REPO"
else
  cd "$LOCAL_REPO"
  git stash
  git pull --depth=1
  git stash pop
  cd -
fi
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Customize tabs
sed -i -e 's/shiftwidth=4/shiftwidth=2/g' ~/.vim_runtime/vimrcs/basic.vim
sed -i -e 's/tabstop=4/tabstop=2/g' ~/.vim_runtime/vimrcs/basic.vim
