#!/bin/bash
#echo -n "Enter password"
read -p "Enter password: " PSWD
echo "password is $PSWD "
echo "You should hide ur password"

#echo && echo
#stty -echo
#also u can turn off screen echo using cmnd "read -sp passwd"

echo -n "Enter password again"
read -sp "Enter password: " PSWOD

stty -echo
echo 
echo "password is $PSWOD "
echo

#stty echo

exit 0
