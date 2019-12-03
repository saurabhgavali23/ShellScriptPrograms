#!/bin/bash -x

read -p "Enter the Single Digit " n

case $n in

	0)
        	day="Sunday";;
	1)
        	day="Monday";;
	2)
        	day="Tuesday";;
	3)
        	day="Wednesday";;
	4)
        	day="Thursday";;
	5)
        	day="Friday";;
	6)
        	day="Saturday";;
esac
