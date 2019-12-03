#!/bin/bash -x

R=$(( RANDOM%3 ))

WAGE=200

	if [ $R -eq 0 ]
	then
		echo "Employee is Abset"

	elif [ $R -eq 1 ]
	then
		empHour=8
		echo "Employee is Prsent"
		echo $(( $empHour * $WAGE ))

	elif [ $R -eq 2 ]
	then
		empHour=4
		echo "Part-Time Employee"
		echo $(( $empHour * $WAGE ))
	fi
