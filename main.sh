#!/bin/sh

# Install rcs
./config_sh/vimrc.sh
./config_sh/bashrc.sh

cp .gitconfig ~/

# Install packages
sudo pacman -Sy - < pkglist
./aurman.sh
sudo aurman -Sy - < aur-pkglist

#
./post.sh
