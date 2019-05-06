#!/bin/bash

Dotfiles=~/dotfiles

cd $HOME
rm -rf .gitconfig .zshrc .tmux.conf .zprofile .zshalias .tmux.conf.local .zlogin .config/nvim/init.vim 
rm -rf .ideavimrc


ln -s $Dotfiles/.gitconfig .gitconfig
ln -s $Dotfiles/.tmux.conf .tmux.conf
ln -s $Dotfiles/.tmux.conf.local .tmux.conf.local
ln -s $Dotfiles/.zshrc .zshrc
ln -s $Dotfiles/.zlogin .zlogin
ln -s $Dotfiles/.zshalias .zshalias
ln -s $Dotfiles/.nvimrc .config/nvim/init.vim

