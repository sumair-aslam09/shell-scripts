#!/bin/bash

ping -c 1 google.com > /dev/null

if [ $? -eq 0 ];
then
	echo "Internet is accessible."
else
	echo "Internet is not accessible."
fi
