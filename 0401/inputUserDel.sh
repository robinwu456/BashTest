#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

for((i=1;i<=10;i++)); do
	read -p "user: " user
	DeleteUser $user
done
