#!/bin/bash

for f in bin/* ; do
		if [ ! -x "$f" ] 
		then
			chmod +x "$f"
		fi
done
