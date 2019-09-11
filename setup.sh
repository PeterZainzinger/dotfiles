#!/bin/bash

Dotfiles=~/dotfiles

cd $HOME
rm -rf .gitconfig .zshrc .tmux.conf .zprofile .zshalias .tmux.conf.local .zlogin .config/nvim/init.vim 
rm -rf .ideavimrc
rm -rf .config/awesome/rc.lua

ln -s $Dotfiles/.ideavimrc .ideavimrc
ln -s $Dotfiles/.gitconfig .gitconfig
ln -s $Dotfiles/.tmux.conf .tmux.conf
ln -s $Dotfiles/.zshrc .zshrc
ln -s $Dotfiles/.zlogin .zlogin
ln -s $Dotfiles/.zshalias .zshalias
ln -s $Dotfiles/.nvimrc .config/nvim/init.vim
ln -s $Dotfiles/rc-minimal.lua .config/awesome/rc.lua
