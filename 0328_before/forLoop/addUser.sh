#!/bin/bash

for user in $@
do
	grep $user /etc/passwd > /dev/null
	[ $? != 0 ] && sudo useradd -m -s /bin/bash $user
done
