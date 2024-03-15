!#bin/bash

#installing Dependincies
echo "##########################"
echo "installing Dependincies"
echo "##########################"
sudo yum install wget unzip httpd -y > /dev/null
echo


#Start & Enable Services
echo "##########################"
echo "Start and Enable HTTPD Service"
echo "##########################"
sudo systemctl start httpd
sudo systemctl enable httpd
echo


#Creating Temp Directory
echo "############################"
echo "Creating Temp Directory"
echo "#############################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo


wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip > /dev/null


echo "The Uptime of the system"
unzip 2137_barista_cafe.zip > /dev/null
sudo cp -r 2137_barista_cafe/* /var/www/html
echo

#Bounce Service
echo "##########################"
echo "Restarting Service"
echo "##########################"
systemctl restart httpd
echo

#Clean Up
echo "##########################"
echo "Removing Temp Files"
echo "##########################"
rm -rf /tmp/webfiles
echo

sudo systemctl status httpd
ls /var/www/html