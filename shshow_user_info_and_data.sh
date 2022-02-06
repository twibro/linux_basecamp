#!/bin/bash

USER=$0
DIR_PATH=$1

find $DIR_PATH -user $USER -type f,d -exec echo "{} is found!" \;

if [[$USER = "root"]]
then
echo "Finding “root” user data is not allowed!"
exit
else
ps -u $USER -o pid,user,comm
fi
