#!/bin/bash

read -p "input ip:" ip
ping -c 1 -w 1 ${ip}

if [ "$?" == "0" ]; then
	echo "available"
else
	echo "unavailable"
fi
