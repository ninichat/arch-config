FNAME="hack-nerd.ttf"
URL="https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf"

wget -O "$FNAME" "$URL"
mv "$FNAME" ~/.local/share/fonts/
fc-cache -f -v

if [ ! -d "colorls" ]; then
    git clone https://github.com/athityakumar/colorls.git
fi
cd colorls
git pull
gem install colorls
cd ..
