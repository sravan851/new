#!/bin/bash
user=$1
cat /etc/passwd | awk -F ":" '{print $1}'| grep $user
i=$?
if [ $i == 0 ]
then
echo "user id of $1 is $(id -u $1)"
echo "group id of $1 is $(id -g $1)"
echo "Home Direcory of $1 is $(cat /etc/passwd |awk -F ":" '{print $6}' | grep $1)"
else
echo "No User with Name $1"
fi
