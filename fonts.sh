FNAME="hack-nerd.ttf"
URL="https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf"

wget -O "$FNAME" "$URL"
mkdir -p ~/.local/share/fonts
mv "$FNAME" ~/.local/share/fonts/
fc-cache -f -v
