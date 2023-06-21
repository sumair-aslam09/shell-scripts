#!/bin/bash
read -p "Enter username to delete: " username
if id "$username" >/dev/null 2>&1;
then
	sudo userdel "$username"
	echo "User $username deleted successfully!"
	sudo tail -n 5 /etc/passwd
else
	echo "User $username doesn't exists!"
fi
