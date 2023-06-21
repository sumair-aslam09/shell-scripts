#!/bin/bash

group="osi-devops"

userid=1023

groupid=1023

homedir="/home/devops"

bash="/bin/tcsh"

read -p "Enter the username: " username

 

# Check if the user exists

if id "$username" >/dev/null 2>&1; then

	  echo "User '$username' already exists."

	      usermod "$username" -d $homedir -u -o $userid

	          groupmod "$username" -n $group -g $groupid

	  else

		    echo "User '$username' does not exist. Creating the user..."

		      useradd "$username" -d $homedir -s $bash

		        usermod "$username" -o -u $userid

			  groupmod "$username" -n $group -g $groupid

			    echo "User '$username' created successfully."

fi

currentuser=$username

currentuid=$userid

echo "$currentuser"

echo "$currentuid"
