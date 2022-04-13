#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

for((i=$1;i<=$2;i++)); do 
	sudo mariadb -e "create user 'stu$i'@'localhost' identified by 'stu$i';"
	echo $?
done
