#!/bin/bash
mv ~/.bashrc ~/.bashrc.bak
mv ~/.profile ~/.profile.bak

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

ln -s ${SCRIPT_DIR}/.bashrc ~/.bashrc
ln -s ${SCRIPT_DIR}/.profile ~/.profile
ln -s ${SCRIPT_DIR}/.gitconfig ~/.gitconfig

sudo apt-get install -y build-essential
export NONINTERACTIVE=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
unset NONINTERACTIVE

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install gcc