#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

for((i=$1;i<=$2;i++)); do 
	sudo mariadb -e "drop user 'stu$i'@'localhost'"
done
