#!/bin/bash
echo "Enter user name: "
read -r USER
if grep -E -q "^$USER:" /etc/passwd;
then
	echo "user exists"
else
	sudo useradd "$USER"
	echo "$USER is created"
	sudo cat /etc/passwd
fi
