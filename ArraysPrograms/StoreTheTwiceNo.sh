#!/bin/bash -x

l=0;
for(( i=0;i<100;i++ ))
do
	temp=0;
	if [ $i -gt 10 ]
	then

		temp=$i;
		n=$i
		rev=0;
		r=0;
		while (( $n > 0 ))
		do
			r=$(( $n % 10 ))
			rev=$((($rev*10)+$r))
			n=$(( $n / 10))
		done

		if(( $temp == $rev ))
		then
			arr[l++]=$rev
		fi
	fi
done

echo ${arr[@]}
