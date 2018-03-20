#!/bin/sh

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Customize tabs
sed -i -e 's/shiftwidth=4/shiftwidth=2/g' ~/.vim_runtime/vimrcs/basic.vim
sed -i -e 's/tabstop=4/tabstop=2/g' ~/.vim_runtime/vimrcs/basic.vim
