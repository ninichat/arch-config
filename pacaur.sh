#!/bin/sh

git clone https://aur.archlinux.org/pacaur.git
makepkg -fcsi
cd -
rm -rf pacaur
