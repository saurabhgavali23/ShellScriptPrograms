#!/bin/bash -x

read -p 'Enter the day ' d

read -p 'Enter the month ' m


if (( $m >= 3 & $m <= 6 ))
then
	if (( $m==3 & $d>=20))
	then
		echo "true"

	elif (( $m==6 & $d<=20 ))
	then
		echo "true"

	elif (( $m<6 & $m!=3 ))
	then
		echo "true"
	else
		echo "false"
	fi
else
	echo "false"
fi 
