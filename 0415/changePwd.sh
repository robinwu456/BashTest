#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

read -p 'account: ' account
read -p 'new password: ' password

sudo mariadb -e "set password for '$account'@'localhost' = password('$password');" > /dev/null 2>&1 
[ $? = 0 ] && echo 'change success' || echo 'try again'
