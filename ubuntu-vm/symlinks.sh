#!/usr/bin/env bash

# shellcheck disable=SC1090
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
linkDotfile .profile

linkDotfile .cargo
linkDotfile bin

mkdir -p "$dotfilesDir"/.vim/bundle
cd "$dotfilesDir"/.vim/bundle || exit
git clone git://github.com/VundleVim/Vundle.vim.git
vim +PluginInstall +qall

mkdir -p "$dotfilesDir"/.vim/swap

linkDotfile .zsh_functions
