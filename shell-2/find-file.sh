#!/bin/bash
for file in /{,home/sumair/shell/}task/*sh
do 
	if [ -x "$file" ];
	then
		echo "$file"
	fi
done

