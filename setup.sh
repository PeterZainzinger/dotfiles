#!/bin/bash

Dotfiles=~/dotfiles

echo "install vim tmux zsh git"
yes | sudo apt-get install vim tmux zsh git cmake> /dev/null

echo "configure vim"
cd $HOME

rm -rf .vimrc .gitconfig .zshrc .tmux.conf .zprofile

ln -s $Dotfiles/.vimrc .vimrc
ln -sr  $Dotfiles/.vim .vim
ln -s $Dotfiles/.gitconfig .gitconfig
ln -s $Dotfiles/.tmux.conf .tmux.conf
ln -s $Dotfiles/.zshrc .zshrc
ln -s $Dotfiles/.zprofile .zprofile

wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall

