#!/bin/sh

wget -qO /tmp/aurman.tar.gz https://aur.archlinux.org/cgit/aur.git/snapshot/aurman.tar.gz
tar -xf /tmp/aurman.tar.gz --directory /tmp
cd "/tmp/aurman"
makepkg -fcsi
sudo pacman -U aurman*.xz
cd -
