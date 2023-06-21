#!/bin/bash
read -p "Enter dir name: " DIR
if [ -d $DIR ];
then
	echo "$DIR dir exists"
else
	mkdir "$DIR"
	echo "Directory created !!"
fi
