#!/bin/bash

log_file="/var/log/jenkins_installation.log"

# Check if the script is run as root
if [ $UID -ne 0 ]; then
	    echo "This script must be run as root" 1>&2
	        exit 1
fi

# Update package lists
echo "Updating package lists"
apt update &> "$log_file"

# Install Java Development Kit (JDK)
echo "Installing Java"
apt install openjdk-11-jdk -y &>> "$log_file"

# Check if Java is installed successfully
if [ $? -eq 0 ]; then
	    echo "Java installed successfully."
    else
	        echo "Java is not installed, try again."
		    exit 1
fi

# Add the Jenkins repository key and setup repository
echo "Adding Jenkins repository"
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package lists again after adding the Jenkins repository
echo "Updating package lists"
apt update &>> "$log_file"

# Install Jenkins
echo "Installing Jenkins"
apt install jenkins -y &>> "$log_file"

# Check if Jenkins is installed successfully
if [ $? -eq 0 ]; then
	    echo "Jenkins installed successfully"
    else
	        echo "Jenkins installation failed. Check the log file for more details: $log_file"
		    exit 1
fi

# Start Jenkins service
echo "Starting Jenkins"
systemctl start jenkins

# Check Jenkins service status
echo "Jenkins service status:"
systemctl status jenkins

# Enable Jenkins service to start on boot
echo "Enabling Jenkins service"
systemctl enable jenkins

echo "Jenkins installation is complete."
