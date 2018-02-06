#!/bin/sh

#This script to be run from cron to backup of Application Files and Directories.

#Written by Piyush Jalan 11-July-2017.

#Define archive file format.

FILE_EXT=`date +%F-%H%M%S`.tar.gz

#Create Backup File.
cd /var/www/html/backup
tar -czvf Your-DomainName.$FILE_EXT /var/www/html/httpdocs

#Delete all files which are older than 7 days on server
find /var/www/html/backup/* -name "*gz" -mtime +7 -exec rm -f {} \;