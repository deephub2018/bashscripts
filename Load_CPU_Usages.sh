#!/bin/sh

#This script is to monitor web servers Linux Load and CPU usage.

#Written by Piyush Jalan 11-July-2017.

echo "[host]: `hostname`"
echo "avg-load: `cat /proc/loadavg`"
             
#Package 'sysstat' must be installed for running 'iostat' command. You can install 'apt-get install sysstat' for ubuntu and 'yum -y install sysstat' for CentOS or RHEL.

iostat -c | tail -3  
  