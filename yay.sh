#!/bin/sh

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -fcsi
cd -
rm -rf yay
