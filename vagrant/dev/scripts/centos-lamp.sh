#!/bin/bash

# update CentOS with any patches

# tools
yum update -y --exclude=kernel 

yum  instal -y unzip httpd httpd-devel httpd-tools  

# start Apache and status 
systemctl stop httpd ; apachectl status 

rm  -rf /var/www/html 
ln -s /vagrant /var/www/html 

yum  install -y php php-cli php -common php-mysql 

# Mariadb instead of Mysql 
yum  install -y mariadb mariadb-devel.x86_64
systemctl start mariadb

mysql -u root -e "SHOW  DATABASES"

systemctl start httpd ; apachectl status 

