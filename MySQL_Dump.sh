#!/bin/sh

#Created by Piyush on 10 July 2017 
#This script is used for taking backup/dump of MySQL Database.

#Enter Database details including Server Name, Database Name, Username and password.
DBSERVER=127.0.0.1  
DATABASE=demo                         
USER=root
PASS=xxxxx

#Enter file name pattern with .sql extension.
FILE=figs.`date +"%Y%m%d"`.sql

#This command will take backup of above mentioned database and saves the dump file.
mysqldump --opt --user=${USER} --password=${PASS} ${DATABASE} > ${FILE}        

#Avove .sql file will be compressed with GZIP and saved.
gzip $FILE                                                                    
echo "${FILE}.gz was created:"
ls -l ${FILE}.gz