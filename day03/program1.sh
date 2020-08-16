#!/bin/bash

echo "printing /etc/passwd file ********************************"
cat /etc/passwd
echo "first field of passwd file *******************************"
cat /etc/passwd | awk -F: '{print $1}'

echo "user id which are > 1000 *********************************"
cat /etc/passwd | awk -F: '{if($4>1000)print $4}'

echo "Home diretory path ***************************************"
cat /etc/passwd | grep home | awk -F: '{print $0}'2
