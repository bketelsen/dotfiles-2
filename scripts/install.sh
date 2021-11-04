#!/bin/bash
bash ./scripts/shell.sh
#mv ~/.zshrc ~/.zshrc.bak
#mv ~/.zprofile ~/.zprofile.bak
mv ~/.bashrc ~/.bashrc.bak

ln -s $HOME/dotfiles/.zshrc ~/.zshrc
ln -s $HOME/dotfiles/.zprofile ~/.zprofile
ln -s $HOME/dotfiles/.bashrc ~/.bashrc
ln -s $HOME/dotfiles/.zsh ~/.zsh
ln -s $HOME/dotfiles/.gitconfig ~/.gitconfig
ln -s $HOME/dotfiles/bin/update-go.sh ~/bin/update-go.sh

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
eget ogham/exa
eget dandavison/delta

sudo apt-get install -y htop build-essential cmake pkg-config

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
