#!/bin/sh

# This script is to rsync data from one web server to other web servers.

# Written by Piyush Jalan 11-July-2017.

echo "Starting Sync Process..."

rsync -avzir \
--delete \
--progress \
--exclude-from='/var/www/html/script/rsync_exclude.txt' \                           
# You can mentioned name of all files and directories in rsync_exclude which you don't want to sync.
/var/www/html/httpdocs/ Username@ip-Your-Host-IP:/var/www/html/httpdocs/