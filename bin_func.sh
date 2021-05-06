#!/bin/bash

for f in bin/* ; do
	if [ $f != $line ] ; then 
		if [ -x "$f" ] 
		then
			echo "$f is already run ----"
		else
			echo "$f is made to run now"
			chmod +x "$f"
		fi
	fi	
done
