#!/bin/bash

read -p "dir?" dir
if [ -d "$dir" ]; then
	echo "${dir} exist"
else
	echo "not exist, init"
	mkdir "$dir"
fi


read -p "file?" file
if [ -d "$file" ]; then
        echo "${file} exist"
else
        echo "not exist, init"
        mkdir "$file"
fi
