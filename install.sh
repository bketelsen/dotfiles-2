#!/bin/bash
# mv ~/.bashrc ~/.bashrc.bak
# mv ~/.profile ~/.profile.bak

# ln -s $HOME/dotfiles/.bashrc ~/.bashrc
# ln -s $HOME/dotfiles/.profile ~/.profile
# ln -s $HOME/dotfiles/.gitconfig ~/.gitconfig

sudo apt-get install -y build-essential
export NONINTERACTIVE=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
unset NONINTERACTIVE

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install gcc