#!/bin/bash

read -p "pwd?" pwd
if [ "$pwd,," = "qwer" ]; then
	echo "pass"
else
	echo "not correct"
fi
