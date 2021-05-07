#!/bin/bash

source ~/dotfiles/symfunc.sh

dotfilesDir=$(pwd)

# in case you want to insert a file in a folder
# mkdir ${HOME}/.folder
# linkDotfile .folder/.file

# Link .bash_aliases for non desktop installations like rpi-headless

mkdir .vim
linkDotfile .vim
linkDotfile .vimrc
# linkDotfile .ackrc
linkDotfile .bashrc
linkDotfile .gitconfig
# linkDotfile .tmux.conf
# linkDotfile .goomwwmrc
# linkDotfile .inputrc
# linkDotfile .xinitrc
# linkDotfile .curlrc
# linkDotfile .gf
linkDotfile .aliases
linkDotfile .zshrc
linkDotfile .profile

mkdir .cargo
linkDotfile .cargo
mkdir bin
linkDotfile bin
mkdir completion_zsh
linkDotfile completion_zsh

mkdir -p $dotfilesDir/.vim/bundle
cd $dotfilesDir/.vim/bundle
git clone git://github.com/VundleVim/Vundle.vim.git
vim +PluginInstall +qall

mkdir -p $dotfilesDir/themes
cd $dotfilesDir/themes
git clone https://github.com/dracula/gnome-terminal

mkdir -p $dotfilesDir/.vim/swap
