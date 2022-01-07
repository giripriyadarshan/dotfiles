#!/usr/bin/env bash

function cargos {
	if [ "$1" = update ]; then
		cargo install-update -a
	else
		cargo install --list
	fi
}

[ "$(ps -o comm= -p "$$")" = "zsh" ] && _cargos() {
	compadd update list
}

compdef _cargos cargos
