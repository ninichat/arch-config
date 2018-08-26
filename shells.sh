#!/bin/sh

echo "Choose the shell you wish to use [fish, zsh, bash]"
read "SHEL"

[ "$SHEL" = "fish" -o "$SHEL" = "zsh" -o "$SHEL" = "bash" ] &&
    "./config_rc/shells/${SHEL}.sh" ||
    echo "$SHEL is not a supported shell"
