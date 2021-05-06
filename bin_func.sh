#!/bin/bash

input="./bin/binary_list.txt"
while IFS= read -r line
do
	for f in bin/* ; do
		if [ "$f" != "$line" ] ; then 
			if [ -x "$f" ] 
			then
				echo 
			else
				chmod +x "$f"
			fi
		fi	
	done
done < "$input"
