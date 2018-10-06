#!/bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

BASEDIR=$(dirname "$0")
cp -r "$BASEDIR/custom" "$HOME/.oh-my-zsh"

cp "$BASEDIR/.zprofile" "$BASEDIR/.zshrc" "$HOME"
