#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

#sudo mariadb -e "select user,host,password,select_priv,insert_priv from mysql.user;"

for((i=$2;i<=$3;i++)); do
	sudo mariadb -e "grant all on *.* to '$1$i'@'localhost' identified by '$1$i' with grant option;"
done

#sudo mariadb -e "select user,host,password,select_priv,insert_priv from mysql.user;"
