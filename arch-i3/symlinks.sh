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
linkDotfile .xinitrc
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

mkdir -p "$dotfilesDir"/.vim/bundle
cd "$dotfilesDir"/.vim/bundle || exit
git clone https://github.com/VundleVim/Vundle.vim.git
\vim +PluginInstall +qall

mkdir -p "$HOME/.config/nvim"
linkDotfile ".config/nvim/init.vim"
nvim +PluginInstall +qall

mkdir -p "$dotfilesDir"/themes
cd "$dotfilesDir"/themes || exit
git clone https://github.com/dracula/gnome-terminal

mkdir -p "$dotfilesDir"/.vim/swap

linkDotfile .zsh_functions

mkdir -p "$HOME/.config/i3"
mkdir -p "$HOME/.config/i3status"
mkdir -p "$HOME/.config/alacritty"
mkdir -p "$HOME/.config/i3status-rust"

linkDotfile ".config/i3/config"
linkDotfile ".config/i3status/config"
linkDotfile ".config/alacritty/alacritty.toml"
linkDotfile ".config/alacritty/dracula.toml"
linkDotfile ".config/i3status-rust/config.toml"
linkDotfile ".zlogin"
