#!/bin/bash
bash ./scripts/shell.sh
#mv ~/.zshrc ~/.zshrc.bak
#mv ~/.zprofile ~/.zprofile.bak
mv ~/.bashrc ~/.bashrc.bak

ln -s $HOME/dotfiles/.zshrc ~/.zshrc
ln -s $HOME/dotfiles/.zprofile ~/.zprofile
ln -s $HOME/dotfiles/.bashrc ~/.bashrc
ln -s $HOME/dotfiles/.zsh ~/.zsh
