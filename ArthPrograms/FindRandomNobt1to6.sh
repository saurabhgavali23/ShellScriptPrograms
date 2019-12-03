#!/bin/bash -x


function random()
{
	for(( i=0;i<$N;i++ ))
	do
		R=$(( RANDOM%6 ))
		if [ $R != 0 ]
		then
			echo $R
		fi
	done
}


read -p 'Enter the no. ' N

random $N
