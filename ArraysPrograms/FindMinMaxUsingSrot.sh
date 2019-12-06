#!/bin/bash -x

function checkMinMax()
{
	for ((i=0;i<10;i++))
	do
		random=$((100+RANDOM%900))
		arr[((i))]=$random
	done

	for (( i=0; i<10; i++ ))
	do

		for (( j=$((i+1));j<10;j++ ))
		do
			if (( arr[$i] > arr[$j] ))
			then
				temp=${arr[$i]}
				arr[$i]=${arr[$j]}
				arr[$j]=$temp
			fi
		done
	done

	echo ${arr[@]}
}


checkMinMax
echo ${arr[1]}
echo ${arr[8]}
