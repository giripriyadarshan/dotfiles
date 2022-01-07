#!/usr/bin/env bash

# shellcheck disable=SC1090
source ~/dotfiles/symfunc.sh

# in case you want to insert a file in a folder
# mkdir ${HOME}/.folder
# linkDotfile .folder/.file

# Link .bash_aliases for non desktop installations like rpi-headless
# changed due to knowledge of that it doesn't make any difference
# linkDotfile .bash_aliases

# linkDotfile .vim
# linkDotfile .vimrc
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
# linkDotfile .zshrc
linkDotfile .profile

# mkdir -p $dotfilesDir/.vim/bundle
# cd $dotfilesDir/.vim/bundle
# git clone git://github.com/VundleVim/Vundle.vim.git
# vim +PluginInstall +qall
