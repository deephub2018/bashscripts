#!/bin/sh

#Written by Piyush Jalan on 12-07-2017

#Update YUM repositories
sudo yum update -y

#Install Apache 2.4
sudo yum install -y httpd24

#Restart Apache service
sudo service httpd restart

#Set Apache service to start at boot time
sudo chkconfig httpd on

#Set webserver user to webroot group
sudo chown -R $USER:apache /var/www/

#Install PHP7.0 and its required extensions
sudo yum install -y php70 php70-mysqlnd php70-intl php70-xml php70-mbstring php70-mcrypt

#Install MySQL Server 7.0 and MySQL Client
sudo yum install -y mysql56-server mysql56

#Start MySQL service
sudo service mysqld start

#Start MySQL service at boot time
sudo chkconfig mysqld on

echo "######################################"
#Display System Basic Information.
echo "`cat /etc/*-release`"

echo "######################################"
#Display Installed Apache Version.
echo "`httpd -v`"

echo "######################################"
#Display Installed Mysql Version.
echo  "`mysql --version`"

echo "######################################"
#Display installed Php Version.
echo "`php -v`"

echo "######################################"
