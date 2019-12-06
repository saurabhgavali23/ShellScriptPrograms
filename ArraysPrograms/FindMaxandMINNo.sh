#!/bin/bash -x

first=0;
secondLarg=0;
second=0;
for (( i=0; i<10; i++ ))
do
	random=$((100+RANDOM%900))

	arr[((i))]=$random

done

	for ((j=0;j<$i;j++))
	do

		if (( arr[((j))] > $first ))
		then
			secondLarg=$first
			first=${arr[((j))]}
		fi

		if (( ${arr[((j))]} < $first &&  $secondLarg != $first ))
		then
			secondLarg=${arr[((j))]}
		fi
	done

		secondMin=${arr[0]}
		for ((k=0;k<$i;k++))
		do

			if (( arr[((k))] < $secondMin ))
			then
				secondMin=${arr[((k))]}
			fi
		done

echo ${arr[@]};
echo $secondLarg
echo $secondMin
