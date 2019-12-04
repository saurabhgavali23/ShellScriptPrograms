#!/bin/bash -x

low=0
high=100
while [ $low -lt $high ]
do

	mid=$((($low + $high) / 2 ))

	read -p "press 1 when values are between $low and $mid OR press 2 when values are between $(($mid+1)) and $high " l


	if [ $l -eq 1 ]
	then
		high=$mid
	else
		low=$(($mid+1))
	fi
done

echo "Your No is: $low"
