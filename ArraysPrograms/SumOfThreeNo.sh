#!/bin/bash -x

arr=("1" "2" "-1" "0" "3" "-3")

len=${#arr[@]}

	for (( i=0;i<$len;i++ ))
	do
		for (( j=$(($i+1));j<$len;j++ ))
		do
			for (( k=$(($j+1));k<$len;k++ ))
			do
				if (( arr[$i]+arr[$j]+arr[$k]==0 ))
				then
					echo "${arr[$i]}+${arr[$j]}+${arr[$k]}"
				fi
			done
		done
	done
