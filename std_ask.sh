#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

read -p "account: " account
read -p "password: " password

sudo mariadb -e "select user,host,password,select_priv,insert_priv from mysql.user;"
sudo mariadb -e "grant all on *.* to '$account'@'localhost' identified by '$password' with grant option;"
sudo mariadb -e "select user,host,password,select_priv,insert_priv from mysql.user;"
