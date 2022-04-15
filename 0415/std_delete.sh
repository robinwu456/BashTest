#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

for((i=$2;i<=$3;i++)); do 
	sudo mariadb -e "drop user '$1$i'@'localhost'"
done
