#!/bin/bash
#reading lines
File=$1

{
	read -r line1
	read -r line2
} < $File

echo "First line in $File is :"
echo "$line1"
echo "-------------------------"
echo "Second line in $File is :"
echo "$line2"

exit 0
