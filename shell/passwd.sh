#!/bin/bash
FILE=passwd.sh
if [ -e $FILE ];
then
	chmod a+x $FILE

fi
echo "Simple password generator"
read -p "Enter length of password: " LENGTH
for p in $(seq 1 5);
do
#openssl rand -base64 48 | cut -c1-$LENGTH
	openssl rand -hex 48 | cut -c1-$LENGTH
done
