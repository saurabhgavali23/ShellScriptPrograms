#!/bin/bash -x


read -p "Enter the no" n
no=0
for ((i=1; i<$n; i++ ))
do
	sum=$(echo "1/$i" | bc -l)
	no=$( echo $no+$sum | bc -l )
done

echo "$no"
