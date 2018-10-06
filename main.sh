#!/bin/sh

# Install vimrc
./config_rc/vimrc.sh

# Git config
cp .gitconfig "$HOME"

# Mod + p to take a screenshot in this $HOME/scrot
mkdir "$HOME/scrot"

# dotfiles
for i in .*; do
    if [ "$i" != ".git" ]; then
        cp -r "$i" "$HOME/$i"
    fi
done

# Install packages
sudo pacman -S --needed - < pkglist

# Install fish / zsh / bash config
./shells.sh

# Font
./fonts.sh

# Post scripts
./post.sh

# This will probably fail, so putting that at the end
# Import keys at your leasure
./aurman.sh
aurman -S --needed $(cat aur-pkglist)
