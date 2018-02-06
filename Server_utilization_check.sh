#!/bin/bash

#This script will tell user about current Server Utilization Matrix.

# Written by Piyush Jalan 12-July-2017.

date;
echo "******Uptime******"
uptime
echo "******Currently connected******"
w
echo "--------------------"
echo "******Last logins******"
last -a |head -3
echo "--------------------"
echo "******Disk Usage******"
df -h 
echo "******Memory Usage*******"
free -m 
echo "--------------------"
echo "******Utilization and most expensive processes******"
top -b |head -3
echo "--------------------"
top -b |head -10 |tail -4
echo "--------------------"
echo "******Current connections******"
ss -s
echo "--------------------"
echo "******Processes******"
ps auxf --width=200
echo "--------------------"
echo "******vmstat******"
vmstat 1 5