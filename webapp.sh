#!/bin/bash
#Installing Dependencies
echo "########################"
echo "Installing packages"
echo "########################"
sudo yum install wget unzip httpd -y
echo

#Start & Enable service
echo "#################################################"
echo "Start & Enable HTTPD Service"
echo "#################################################"
sudo systemctl start httpd
sudo systemctl enable httpd
#sudo systemctl status httpd
echo

# Creating Temp Directory
echo "####################################################"
echo "Starting Artifact Deployment"
echo "####################################################"
mkdir -p /tmp/webfile
cd /tmp/webfile
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip
sudo unzip 2098_health.zip
sudo cp -r 2098_health/* /var/www/html
echo

# Bounce Service
echo "##################################################"
echo "Restarting HTTPD Service"
echo "##################################################"
sudo systemctl restart httpd
echo

# Clean UP
echo "####################################################"
echo 'Removing Temporary File'

echo "###################################################"
sudo rm -rf  /tmp/webfile
echo
