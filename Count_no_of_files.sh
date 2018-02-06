#!/bin/sh

#Written by Piyush Jalan on 11-07-2017

#This script will print number of files in each sub-directory in present directory. It will also sort directories name according to maximum numbers of files.

#It comes in handy when we need to compare a large number of files within in directory on two diferent servers. 

du -a | cut -d/ -f2 | sort | uniq -c | sort -nr
