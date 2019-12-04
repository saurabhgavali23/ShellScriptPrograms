#!/bin/bash -x

head=0
tail=0
win=11

while [[ $head -lt $win && $tail -lt $win ]]
do
	random=$((RANDOM%2))
	if [ $random -eq 0 ]
	then
		head=$(($head+1))
	else
		tail=$(($tail+1))
	fi
done

headPer=$((($head*100)/11))
tailPer=$((($tail*100)/11))
