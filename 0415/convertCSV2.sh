#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

 read -p 'Original File(big5): ' ans
  encoding=$(file -i $ans | cut -f 2 -d"=")
  if [ ${ans##*.} == 'csv' ]
  then
  [ -f $ans ]
      if [ $? == 0 ]
      then
            if [ $encoding == 'iso-8859-1' ]
            then
                read -p 'Output File(utf8): ' ans1
               iconv -f big5 -t utf8 $ans -o $ans1
            else
               read -p 'Output File(utf8): ' ans1
               iconv -f $encoding -t utf8 $ans -o $ans1
            fi
       else
            echo "You don't have $ans"
       fi
  else
    echo "Your file is not csv"
  fi
