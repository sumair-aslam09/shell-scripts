#!/bin/bash
echo "File encrypter/decrypter"
echo "Select below"
choice="Encrypt Decrypt"

select option in $choice;
do
if [ $REPLY = 1 ];
then
	echo "You have selected Encryption"
	echo "Enter the file name"
	read FILE;
	gpg -c $FILE
	echo "File has been encrypted"
elif [ $REPLY = 2 ];
then
	echo "You have selected Decryption"
	echo "Enter the file name"
	read FILED;
	gpg -d $FILED
	echo "File has been decrypted"
else
	echo "Select properly"
fi
done
