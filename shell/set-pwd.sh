#!/bin/bash
#status codes
ROOT_UID=0
EX_WR_USR=65
EX_NO_USR=70
SUCCESS=0

#checking for root user
if [ "$UID" -ne "$ROOT_UID" ];
then
	echo "Only root can run this script"
	exit $EX_WR_USR
else
	echo "You can run this script as u r a root"
fi

#setting passwd
username=$1
PSWD=sumair123

#checking user existence
grep -q "$username" /etc/passwd
if [ $? -ne $SUCCESS ];
then
	echo "User not exist"
	echo "No password changed"
	exit $EX_NO_USR
fi
echo "$PSWD" | chpasswd --stdin "$username"
echo "Password changed for $username "
exit $SUCCESS


