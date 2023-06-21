#!/bin/bash
filename="$1"
if [ -e $filename ];
then
	echo "file exists"
	cat $filename | :wq!








else
	echo "file doesn't exists"
fi




