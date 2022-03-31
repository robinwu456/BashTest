#!/bin/bash

[ "$USER" != "root" ] && echo "no root to run" && exit 1

source ./kong.conf
echo $PROJECT_USER_NAME

for user in $PROJECT_USER_NAME; do
	grep $user /etc/passwd > /dev/null
        [ $? != 0 ] && useradd -m -s /bin/bash $user
done
