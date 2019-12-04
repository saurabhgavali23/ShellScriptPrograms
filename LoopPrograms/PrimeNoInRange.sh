#!/bin/bash -x


read -p "Enter the value " n

flag=1

for (( no=0;no<=$n;no++ ))
do
	flag=1
	if [[ $no -eq 1 || $no -eq 0 ]]
	then
		flag=0
	fi

	m=$(( $no/2 ))
	for (( i=2;i<=m;i++ ))
	do

		if [ $(($no % $i)) -eq 0 ]
		then
			flag=0
			break
		fi
	done

if [ $flag -eq 1 ]
then
	echo "$no"
fi

done
