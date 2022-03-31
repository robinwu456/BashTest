#!/bin/bash

read -p "score?" score
if [ "$score" -ge 90 ]; then
        echo "A"
elif [ "$score" -ge 80 ]; then
        echo "B"
elif [ "$score" -ge 60 ]; then
	echo "C"
else
	echo "D"
fi
