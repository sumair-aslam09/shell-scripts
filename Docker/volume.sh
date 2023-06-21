#!/bin/bash
#Prompt to select volume
echo "Select a volume to create:"
echo "1.Anonymous volume"
echo "2.Named volume"
echo "3.Host volume"
read -p "Select a choice from (1-3): " choice

#Create a docker volume based on the choice
image=$1
log_file="/var/log/volume.log"
case $choice in 
    1)
        #Anonymous volume
        read -p "Enter container path to map volume: " con_path
        docker run  -v  $con_path $image &> "$log_file"
        echo "Anonymous volume created !!"
        ;;
    2)
        #Named volume
        read -p "Enter a volume name to create: " vol_name
        read -p "Enter container path to map volume: " con_path
        docker run  -v $vol_name:$con_path $image &> "$log_file"
        echo "Named volume created !!"
        ;;
    3)
        #Host volume
        read -p "Enter the host path directory: " host_path
        read -p "Enter container path to map volume: " con_path
	docker run -v $host_path:$con_path $image &> "$log_file"
        echo "Host volume created !!"
        ;;
    *)
        echo "Invalid choice !!.Select correct choice"
        ;;
esac
