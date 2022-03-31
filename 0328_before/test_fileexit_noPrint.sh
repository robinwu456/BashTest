#!/bin/bash

read -p "file?" file
cat $file &> bbb > /dev/null
