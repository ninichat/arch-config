#!/bin/sh

echo "Choose the shell you wish to use [fish, zsh, bash]"
echo "Warning: This will likely remove your own .shrc!"
read "SHEL"

[ "$SHEL" = "fish" -o "$SHEL" = "zsh" -o "$SHEL" = "bash" ] &&
    "./config_rc/shells/${SHEL}/${SHEL}.sh" ||
    echo "$SHEL is not a supported shell"
