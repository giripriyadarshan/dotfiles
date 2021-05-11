#!/bin/bash

function cargos {
	if [ "$1" = update ]; then
		cargo install-update -a
	else
		cargo install --list
	fi
}

if [ "$(ps -o args= -p "$$")" = "zsh" ] ; then
	_cargos(){
		compadd update list
	}

compdef _cargos cargos
fi
