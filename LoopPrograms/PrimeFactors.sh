#!/bin/bash -x


read -p "Enter the value " n

for(( i=2; i<$n ; i++ ))
do
	while (( $n%$i==0 ))
	do
		fact=$i
		n=$(( $n/$i ))
	done
done
