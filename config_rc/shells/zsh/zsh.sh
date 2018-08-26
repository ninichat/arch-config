#!/bin/sh

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

BASEDIR=$(dirname "$0")
cp -r "$BASEDIR/custom" "$HOME/.oh-my-zsh"
