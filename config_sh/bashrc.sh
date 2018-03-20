#!/bin/sh

git clone --depth=1 https://github.com/jaivardhankapoor/bestbash ~/.bash/
ln -s ~/.bash/init ~/.bashrc

# Custom aliases
touch ~/.bash/custom_alias
echo 'alias v='vim'' > ~/.bash/custom_alias
echo 'if [ -f ~/.git-completion.bash ]; then' >> ~/.bash/custom_alias
echo '  __git_complete g __git_main' >> ~/.bash/custom_alias
echo 'fi' >> ~/.bash/custom_alias
echo "alias g='git'" >> ~/.bash/custom_alias
echo "source ~/.bash/custom_alias" >> ~/.bashrc
