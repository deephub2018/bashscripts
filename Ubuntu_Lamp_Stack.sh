#!/bin/sh

# This script is to install Apache24, PHP 7, MySQL 5.6 for Ubuntu 16.04.

# Written by Piyush Jalan 12-July-2017.

# This command will update the system.
sudo apt-get update -y

# This will install the apache web server.
sudo apt-get -y install apache2

# Permission
sudo chown $USER:www-data -R /var/www  

#This will install Php7.0 and It's extensions.
sudo apt-get -y install php php-mysql php-mbstring php-mcrypt php-intl php-xml php-zip php-gd

#Restarting Apache Server.
sudo service apache2 restart

#Installing MySql Server 5.7 and Client 5.7.

sudo apt-get -y install mysql-server mysql-client

#Start MySQL service
sudo service mysql start

echo "######################################"
#Display System Basic Information.
echo "`cat /etc/*-release`"

echo "######################################"
#Display Installed Apache Version.
echo "`apache2 -v`"

echo "######################################"
#Display Installed Mysql Version.
echo  "`mysql --version`"

echo "######################################"
#Display installed Php Version.
echo "`php -v`"

echo "######################################"
