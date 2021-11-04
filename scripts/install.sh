#!/bin/bash
bash ./scripts/shell.sh
#mv ~/.zshrc ~/.zshrc.bak
#mv ~/.zprofile ~/.zprofile.bak
mv ~/.bashrc ~/.bashrc.bak

ln -s $HOME/dotfiles/.zshrc ~/.zshrc
ln -s $HOME/dotfiles/.zprofile ~/.zprofile
ln -s $HOME/dotfiles/.bashrc ~/.bashrc
ln -s $HOME/dotfiles/.zsh ~/.zsh

curl -o eget.sh https://zyedidia.github.io/eget.sh
shasum -a 256 eget.sh # verify with hash below
bash eget.sh
sudo cp eget /usr/local/bin/

mkdir -p $HOME/bin
cd $HOME/bin
eget bootandy/dust
eget muesli/duf
eget sharkdp/bat
eget sharkdp/fd
eget BurntSushi/ripgrep
eget junegunn/fzf
eget stdolan/jq
eget dalance/procs
eget ogham/dog
