#!/bin/bash
host="amazon.com"
port=80

nmap -p "$port" "$host" | grep -q "$port/tcp" > /dev/null 2>&1
if [ $? -eq 0 ];
then
	echo "Port $port is open on $host"
else
	echo "Port $port is closed on $host"
fi
