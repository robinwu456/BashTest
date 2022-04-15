#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

sudo mariadb -e "select user,host,password,select_priv,insert_priv from mysql.user;"

for((i=$1;i<=$2;i++)); do
	sudo mariadb -e "grant all on *.* to 'stu$i'@'localhost' identified by 'stu$i' with grant option;"
done

sudo mariadb -e "select user,host,password,select_priv,insert_priv from mysql.user;"
