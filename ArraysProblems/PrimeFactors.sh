#!/bin/bash -x


read -p "Enter the value " n
l=0;
for(( i=2; i<$n ; i++ ))
do
	while (( $n%$i==0 ))
	do
		arr[l++]=$i
		n=$(( $n/$i ))
	done
done

echo ${arr[@]}
