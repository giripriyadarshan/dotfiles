#!/bin/bash

## Virtual Machines SSH
function vm() {
	if [ "$1" = azure-linux ]; then
		ssh giripriyadarshan@52.163.80.54
	elif [ "$1" = home-automation ]; then
		if type zerotier-cli >/dev/null 2>&1; then
			ssh pi@192.168.191.45
		else
			echo "Please install ZeroTier One"
		fi
	else
		echo "Enter a valid ssh address"
	fi
}

[ "$(ps -o comm= -p "$$")" = "zsh" ] && _vm() {
compadd azure-linux home-automation none
}
compdef _vm vm

