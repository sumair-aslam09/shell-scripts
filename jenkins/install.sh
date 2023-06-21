#!/bin/bash
#This script installs Jenkins based on the OS.
#This script must be run as root

if [ $UID -ne 0 ];
then
	        echo "This script must be run as root" 1>&2
		        exit 1
fi

log_file="/var/log/jenkins_installation.log"


#Check if the /etc/os-release file exists
if [ -f /etc/os-release ];
then
	        #Find out the os name from the file
		        os_name=$(grep -w "NAME" /etc/os-release | cut -d "=" -f 2 | tr -d '"' | tr [:upper:] [:lower:])

			        #Print the OS name
				        echo "OS Name: $os_name"
				else
					        echo "/etc/os-release file not found"
fi

#Install jenkins based on os_name
if [ $os_name == ubuntu ];
then

	    apt update &> "$log_file"

	        #Install Java
		    apt install openjdk-11-jre &> "$log_file"
		        #java -version

			    #Check Java is installed or not.
			             if [ $? -eq 0 ];
					             then
							                     echo "Java installed successfully."
									             else
											                     echo "Java is not installed,try again."
													             fi
														         java -version

															     #Install Jenkins
															         curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
																	             /usr/share/keyrings/jenkins-keyring.asc > /dev/null
																     echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
																	                 https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
																			                 /etc/apt/sources.list.d/jenkins.list > /dev/null
																         apt-get update &> "$log_file"
																	     apt-get install jenkins &> "$log_file"

																	         if [ $? -eq 0 ];
																			         then
																					                 echo "Jenkins installed successfully"
																							         else
																									                 echo "Jenkins is not installed,try again."
																											         fi

																												     systemctl enable jenkins

																												         systemctl start jenkins
																													    # systemctl status jenkins

																												     elif [ $os_name == centos ];
																												     then

																													         yum update -y &> "$log_file"

																														     #Install Java
																														         sudo yum install java-11-openjdk &> "$log_file"

																															     #Check Java is installed or not.

																															             if [ $? -eq 0 ];
																																	             then
																																			                     echo "Java installed successfully."
																																					             else
																																							                     echo "Java is not installed"
																																									             fi


																																										         #Install Jenkins
																																											     wget -O /etc/yum.repos.d/jenkins.repo \
																																												         https://pkg.jenkins.io/redhat-stable/jenkins.repo &> "$log_file"
																																											         
																																											         rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key &> "$log_file"
																																												     yum upgrade &> "$log_file"
																																												     # Add required dependencies for the jenkins package
																																												     #sudo yum install java-11-openjdk
																																												         yum install jenkins &> "$log_file"

																																													     #Check Jenkins is installed or not.
																																													             if [ $? -eq 0 ];
																																															             then
																																																	                     echo "Jenkins installed successfully."
																																																			             else
																																																					                     echo "Jenkins is not installed."
																																																							             fi

																																																								         systemctl daemon-reload
																																																									     
																																																									     #Reload system
																																																									         systemctl daemon-reload

																																																										     #Start Jenkins
																																																										         systemctl start jenkins

																																																											     #Enable Jenkins
																																																											         #systemctl enable jenkins
fi

#Check if Java is installed
if [ command -v java &>/dev/null ];
then
	        java_version=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}' )
		        echo "Java version:$java_version"
		else
			        echo "Java is not installed"
fi

#Check if Jenkins is installed
if [ command -v jenkins &>/dev/null ];
then
	        jenkins_version=$(jenkins --version 2>&1 | awk '{print $2}' )
		        echo "Jenkins version:$jenkins_version"
		else
			        echo "Jenkins is not installed"
fi

#Retrieve Jenkins Password
jenkins_password=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
echo "Jenkins Password: $jenkins_password"

#Open Jenkins URL
jenkins_url="https://172.31.140.32:8080"
echo "Jenkins Dashboard Opens now"
xdg-open "$jenkins_url" &>/dev/null

#Open Jenkins Dashboard
sleep 5
#Wait for Jenkins to start
xdg-open "$jenkins_url/login" &>/dev/null
