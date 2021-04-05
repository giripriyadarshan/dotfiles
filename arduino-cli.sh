#!/bin/bash

curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | BINDIR=~/dotfiles/bin sh


~/dotfiles/bin/arduino-cli completion zsh > _arduino-cli
mv _arduino-cli ~/dotfiles/completion_zsh/