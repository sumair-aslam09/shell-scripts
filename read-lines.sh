#!/bin/bash
File=/etc/passwd

{
	read line1
	read line2
} < "$File"

echo "First line in $File is:"
echo "$line1"
echo
echo "First line fields:"
echo "$line1" | awk 
'{print "Field 1: " $1, "Field 2: " $2, "Field 3: "$3}'

echo "---------------------------------"
echo "second line in $File is: "
echo "$line2"
echo
echo "second line fields:"
echo "$line2" | awk '{print "Field 1: " $1, "Field 2: " $2, "Field 2: " $3}'

echo "--------------------------------"
exit 0
