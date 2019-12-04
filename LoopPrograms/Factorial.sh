#!/bin/bash -x

read -p "Enter the Number" n

fact=1
for (( i=1; i<=$n; i++ ))
do
	fact=$(( $fact*$i ))

	echo "$fact"
done
