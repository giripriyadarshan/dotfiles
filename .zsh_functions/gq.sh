#!/bin/bash

function gq() {
	git add .
	message=""
	for arg in "$@"; do
		message+="$arg"
		message+=" "
	done
	git commit -m "$message"
	git push
}
