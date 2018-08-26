#!/bin/sh

# Install rcs
./config_sh/vimrc.sh
./shells.sh

# Git config
cp .gitconfig "$HOME"

# .config files
cp -r .config "$HOME"

# Install packages
sudo pacman -Sy - < pkglist
./aurman.sh
sudo aurman -Sy - < aur-pkglist

#
./post.sh
