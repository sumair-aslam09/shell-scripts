#!/bin/bash
# This script installs Jenkins based on the OS.
# This script must be run as root

if [ $EUID -ne 0 ];
then
	echo "This script must be run as root" 1>&2
	exit 1
fi


log_file="/var/log/jenkins_installation.log"

# Check if the /etc/os-release file exists
if [ -f /etc/os-release ];
then
	# Find out the OS name from the file
	os_name=$(grep -w "NAME" /etc/os-release | cut -d "=" -f 2 | tr -d '"' | tr '[:upper:]' '[:lower:]')

	# Print the OS name
	echo "OS Name: $os_name"
else
	echo "/etc/os-release file not found"
	exit 1
fi

# Install Jenkins based on os_name
if [ "$os_name" == "ubuntu" ];
then
	apt update &> "$log_file"

	# Install Java
	apt install -y openjdk-11-jre &> "$log_file"

	# Check if Java is installed or not
	if [ $? -eq 0 ];
	then
		echo "Java installed successfully."
	else
		echo "Java is not installed, try again."
		exit 1
	fi
	java -version
	# Install Jenkins
	wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add - &> "$log_file"
	echo "deb https://pkg.jenkins.io/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
	apt update &> "$log_file"
	apt install -y jenkins &> "$log_file"

	# Check if Jenkins is installed or not
	if [ $? -eq 0 ];
	then
		echo "Jenkins installed successfully."
	else
		echo "Jenkins is not installed, try again."
		exit 1
	fi

	systemctl enable jenkins
	systemctl start jenkins
	
elif [ "$os_name" == "centos" ];
then
	yum update -y &> "$log_file"
	# Install Java
	yum install -y java-11-openjdk &> "$log_file"
	# Check if Java is installed or not
	if [ $? -eq 0 ];
	then
		echo "Java installed successfully."
	else
		echo "Java is not installed."
		exit 1
	fi
	# Install Jenkins
	wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo &> "$log_file"
	rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key &> "$log_file"
	yum upgrade -y &> "$log_file"
	yum install -y jenkins &> "$log_file"
     	 																				        # Check if Jenkins is installed or not
    																						if [ $? -eq 0 ];
																						then
																							echo "Jenkins installed successfully."
																						else
																							echo "Jenkins is not installed."
																							exit 1
																						fi		
																						    systemctl daemon-reload
																						    systemctl start jenkins
																						    systemctl enable jenkins
																					    else
																						    echo "Unsupported OS: $os_name"
																						    exit 1
fi

<< cmnt
# Check if Java is installed
if command -v java &>/dev/null;
then
	    java_version=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')
	        echo "Java version: $java_version"
	else
		    echo "Java is not installed."
fi

# Check if Jenkins is installed
if command -v jenkins &>/dev/null;
then
	    jenkins_version=$(jenkins --version 2>&1 | awk '{print $2}')
	        echo "Jenkins version: $jenkins_version"
	else
		    echo "Jenkins is not installed."
fi


# Retrieve Jenkins Password
jenkins_password=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
echo "Jenkins Password: $jenkins_password"


# Open Jenkins URL
jenkins_url="http://172.31.140.32:8080"
echo "Opening Jenkins Dashboard..."

# Set the BROWSER environment variable to Google Chrome
export BROWSER=google-chrome

#Switch user
su sumair

# Launch Google Chrome with the Jenkins URL
google-chrome "$jenkins_url"


# Switch from root user to sumair user
su sumair  
./open-jenkins.sh
# Check the user ID of sumair user
sumair_id=$(id -u sumair)

# Check if sumair user ID is 1000
if [ $sumair_id -eq 1000 ]; then
	# Open Jenkins URL
	jenkins_url="http://172.31.140.32:8080"
	echo "Opening Jenkins Dashboard using Google Chrome..."
	
# Set the BROWSER environment variable to Google Chrome
	export BROWSER=google-chrome
# Open Jenkins dashboard in Google Chrome	
	google-chrome "$jenkins_url"
else
	echo "sumair user ID is not 1000. Skipping opening Jenkins Dashboard using Google Chrome."
fi
cmnt



# Check the current user
current_user=$(id -un)

# Check if the current user is "root"
if [ "$current_user" == "root" ]; then
	echo "Switching to sumair user..."
    # Execute commands as sumair user
	su -c '
	# Check the user ID of sumair user
	sumair_id=$(id -u sumair)
	# Check if sumair user ID is 1000

	if [ $sumair_id -eq 1000 ]; then
		# Open Jenkins URL
	jenkins_url="http://172.31.140.32:8080"
	echo "Opening Jenkins Dashboard using Google Chrome..."
	# Set the BROWSER environment variable to Google Chrome														            export BROWSER=google-chrome
	# Open Jenkins dashboard in Google Chrome
	google-chrome "$jenkins_url"
	else
																						            echo "sumair user ID is not 1000. Skipping opening Jenkins Dashboard using Google Chrome."
																					      	     fi
		    																					    ' sumair
																					
																					
																						    else
																							    echo "Current user is not root. Skipping switching to sumair user."
fi

