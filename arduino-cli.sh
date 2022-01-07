#!/usr/bin/env bash

curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | BINDIR=~/dotfiles/bin sh

~/dotfiles/bin/arduino-cli completion zsh >_arduino-cli
mv _arduino-cli ~/dotfiles/completion_zsh/

~/dotfiles/bin/arduino-cli completion "$(ps -o comm= -p "$$")" >~/dotfiles/completion_zsh/_arduino-cli
