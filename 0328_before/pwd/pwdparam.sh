#!/bin/bash

read -p 'password?' pwd
pwdFile=$(cat $1)

if [ "${pwd//[!a-z]/}" == "${pwdFile}" ]; then
	echo "correct"
else 
	echo "not correct"
fi
