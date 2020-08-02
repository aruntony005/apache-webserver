#!/bin/bash
sudo yum install httpd -y
sudo sed -i 's/Listen 80/Listen 8080/g' /etc/httpd/conf/httpd.conf
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo '!!!!!  This is a sample !!!!!' >> /var/www/html/sample
sudo cat ${PWD}/apache-webserver/webpage > /var/www/html/webpage
