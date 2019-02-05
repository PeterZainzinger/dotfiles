#!/bin/bash

Dotfiles=~/dotfiles

cd $HOME

rm -rf .gitconfig .zshrc .tmux.conf .zprofile .zshalias .tmux.conf.local .zlogin .config/nvim/init.vim .config/redshift.conf .config/awesome/rc.lua .Xresources .xsessionrc .config/awesome/themes/rainbow

ln -s $Dotfiles/.gitconfig .gitconfig
ln -s $Dotfiles/.tmux.conf .tmux.conf
ln -s $Dotfiles/.tmux.conf.local .tmux.conf.local
ln -s $Dotfiles/.zshrc .zshrc
ln -s $Dotfiles/.zlogin .zlogin
ln -s $Dotfiles/.zshalias .zshalias
ln -s $Dotfiles/.nvimrc .config/nvim/init.vim
ln -s $Dotfiles/rc.lua .config/awesome/rc.lua
ln -s $Dotfiles/redshift.conf .config/redshift.conf
ln -s $Dotfiles/.Xresources .Xresources
ln -s $Dotfiles/.xsessionrc .xsessionrc
ln -s $Dotfiles/awesome_theme .config/awesome/themes/rainbow

