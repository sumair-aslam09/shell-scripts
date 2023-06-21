#!/bin/bash
read -p "Enter username: " username
read -sp "Enter password: " password
sudo useradd -m $username
echo "$username:$password" | sudo chpasswd 
echo "User created successfully"
sudo tail -n 5 /etc/passwd
