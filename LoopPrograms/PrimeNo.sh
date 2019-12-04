#!/bin/bash -x

read -p "Enter the Number" n

m=$(( $n / 2 ));
flag=0;
for (( i=2; i<=$m; i++ ))
do
	if (( $n%$i==0 ))
	then
		flag=1
		break
	else
		flag=0
	fi
done

if (( $flag == 0 ))
then
	echo "It is Prime No."
else
	echo "It is Not Prime No."
fi
