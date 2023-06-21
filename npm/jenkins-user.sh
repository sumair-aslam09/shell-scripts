sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
sudo systemctl status docker
sudo systemctl start docker
<< cmnt 
Confirm that the Docker socket file has appropriate permissions:

Check the permissions of the Docker socket: ls -l /var/run/docker.sock.
The owner should be root and the group should be docker. Permissions should be set to rw for both owner and group. If the permissions are incorrect, adjust them using: sudo chmod 666 /var/run/docker.sock.
cmnt
