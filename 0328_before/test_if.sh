#!/bin/bash

read -p "password?" pwd

if [ "$pwd" = "1234" ]; then
	echo "pass"
else
	echo "not pass"
fi
