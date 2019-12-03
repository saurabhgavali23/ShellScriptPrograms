#!/bin/bash -x

function random()
{
	for (( i=0;i<$N;i++ ))
	do
		echo $(( RANDOM%2 ))
	done
}

read -p 'Enter the no. ' N

random $N

