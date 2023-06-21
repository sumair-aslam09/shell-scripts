#!/bin/bash

# Check ifconfig command availability
if command -v ifconfig &>/dev/null; then
	  # Execute ifconfig and extract the IP address
	    ip_address=$(ifconfig | awk '/inet /{print $2}' | head -n 1)
    else
	      # Execute ip command and extract the IP address
	        ip_address=$(ip -o -4 addr show | awk '{print $4}' | cut -d "/" -f 1 | head -n 1)
fi

# Print the IP address
echo "IP Address: $ip_address"

