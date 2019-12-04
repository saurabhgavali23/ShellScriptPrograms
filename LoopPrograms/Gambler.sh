#!/bin/bash -x

read -p "Enter the Cash Value" cash

read -p "Enter the Goals value" goals

#read -p "Enter the Trails" trails

win=0
loss=0
beat=0
no=0

	while [[ $cash -gt 0 && $cash -lt $goals ]]
	do
		rand=$((RANDOM%2))

		beat=$(($beat + 1))

		if (( $rand == 1 ))
		then
			cash=$(($cash + 1 ))
			win=$(($win + 1 ))
		else
			cash=$(($cash - 1 ))
			loss=$(($loss - 1 ))
		fi
	done

	winper=$(($win))
	beatper=$(($beat))
	lossper=$(($loss))

