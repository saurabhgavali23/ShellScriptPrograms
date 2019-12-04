#!/bin/bash -x

function powerOfTwo()
{
	POWER=1
	for (( i=0; i<$N; i++))
	do
		POWER=$((2*$POWER)) 
	done
}

read -p "Enter the number" N

powerOfTwo $N
