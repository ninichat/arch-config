#!/bin/sh

# Install vimrc
./config_rc/vimrc.sh

# Git config
cp .gitconfig "$HOME"

# .config files
cp -r .config "$HOME"

# Install packages
sudo pacman -S --needed - < pkglist

# Install fish / zsh / bash config
./shells.sh

# Post scripts
./post.sh

# This will probably fail, so putting that at the end
# Import keys at your leasure
./aurman.sh
aurman -S --needed $(cat aur-pkglist)
