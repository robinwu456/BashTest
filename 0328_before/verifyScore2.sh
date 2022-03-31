#!/bin/bash

read -p "score?" score
if [ "$score" -le 60 ]; then
        echo "D"
elif [ "$score" -le 80 ]; then
        echo "C"
elif [ "$score" -le 90 ]; then
	echo "B"
else
	echo "A"
fi
