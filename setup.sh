#!/bin/bash

Dotfiles=~/dotfiles

mkdir -p ~/.config/systemd/user/

cd $HOME
rm -rf .gitconfig .zshrc .tmux.conf .zprofile .zshalias .tmux.conf.local .zlogin .config/nvim/init.vim .config/redshift.conf .config/awesome/rc.lua .Xresources .xsessionrc .config/awesome/themes/rainbow
rm -f .config/systemd/user/xscreensaver.service
rm -f .config/systemd/user/redshift.service
rm -f .config/systemd/user/nm-applet.service
rm -rf .ideavimrc


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
ln -s $Dotfiles/.ideavimrc .ideavimrc
sudo ln -sf $Dotfiles/xorg.conf /etc/X11/xorg.conf

cp $Dotfiles/xscreensaver.service .config/systemd/user/xscreensaver.service
systemctl --user enable xscreensaver

