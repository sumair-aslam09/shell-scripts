# Open Jenkins URL
jenkins_url="http://172.31.140.32:8080"
echo "Opening Jenkins Dashboard..."

# Set the BROWSER environment variable to Google Chrome
export BROWSER=google-chrome

# Launch Google Chrome with the Jenkins URL
google-chrome "$jenkins_url"
