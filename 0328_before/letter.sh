#!/bin/bash

read -p "Do you love me Y/N?" ans
if [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
	echo "I love you too"
elif [ "$ans" = "n" ] || [ "$ans" = "N" ]; then
	echo "I hate you"
fi
