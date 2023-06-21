FROM ubuntu:latest

# Java Installation
RUN apt-get update && apt-get install -y openjdk-11-jdk

# Apache Installation
RUN apt-get install -y apache2 && apt-get install -y wget

# Tomcat9 Installation
RUN wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.55/bin/apache-tomcat-9.0.55.tar.gz && \
    tar xzf apache-tomcat-9.0.55.tar.gz && \
    rm apache-tomcat-9.0.55.tar.gz && \
    mv apache-tomcat-9.0.55 /var/lib/tomcat9

# Copy the application files to Tomcat webapps directory
COPY . /var/lib/tomcat9/webapps/

EXPOSE 8080

CMD ["/var/lib/tomcat9/bin/catalina.sh", "run"]

# Copy the script.sh file to the working directory
COPY script.sh .

# Make the script.sh file executable
RUN chmod +x script.sh

# Set the entrypoint to run the script.sh file
ENTRYPOINT ["bash", "script.sh"]
