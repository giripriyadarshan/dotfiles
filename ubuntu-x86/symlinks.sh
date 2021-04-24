#!/bin/bash

dotfilesDir=$(pwd)

function linkDotfile() {
    dest="${HOME}/${1}"
    dateStr=$(date +%Y-%m-%d-%H%M)

    if [ -h ~/${1} ]; then
        # Existing symlink
        echo "Removing existing symlink: ${dest}"
        rm ${dest}

    elif [ -f "${dest}" ]; then
        # Existing file
        echo "Backing up existing file: ${dest}"
        mv ${dest}{,.${dateStr}}

    elif [ -d "${dest}" ]; then
        # Existing dir
        echo "Backing up existing dir: ${dest}"
        mv ${dest}{,.${dateStr}}
    fi

    echo "Creating new symlink: ${dest}"
    ln -s ${dotfilesDir}/${1} ${dest}
}

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
