#!/bin/bash

Dotfiles=~/dotfiles

echo "configure vim"
cd $HOME

rm -rf .gitconfig .zshrc .tmux.conf .zprofile

ln -s $Dotfiles/.gitconfig .gitconfig
ln -s $Dotfiles/.tmux.conf .tmux.conf
ln -s $Dotfiles/.tmux.conf.local .tmux.conf.local
ln -s $Dotfiles/.zshrc .zshrc
ln -s $Dotfiles/.zprofile .zprofile
