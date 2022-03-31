#!/bin/bash

for user in $@
do
	grep $user /etc/passwd > /dev/null
	[ $? == 0 ] && echo "$user exist" || 
		(echo "$user not exist, add"; sudo useradd -m -s /bin/bash $user)
done
