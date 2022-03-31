#!/bin/bash

for user in $@
do
	if grep $user /etc/passwd > /dev/null; then
		echo "$user exist"
	else
		echo "$user not exist, add"
		sudo useradd -m -s /bin/bash  $user
	fi
done
