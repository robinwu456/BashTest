#!/bin/bash

while true; do
        clear
	echo -e "1.cpu\n2.memory\n3.hard disk\n4.exit"
        read ans

        case $ans in
                1)
			./cpu1.sh
                        ;;
                2)
                        ./memory1.sh
                        ;;
                3)
                        ./hdInfo1.sh
                        ;;
                4)
                        exit
                        ;;
                *)
                        echo "pleasr enter (1/2/3/4)"
                        sleep 1
                        ;;
        esac

done
