#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

for((i=1;i<=10;i++)); do
	read -p "user: " user
	[ $(IsUserExist $user) == 0 ] && echo "$user exist" && continue
	AddUser $user
done
