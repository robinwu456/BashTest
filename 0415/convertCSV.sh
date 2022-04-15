#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

for file in *.csv
do
    iconv -f big -t utf8 "$file"
done

