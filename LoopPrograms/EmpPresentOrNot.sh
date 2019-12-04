#!/bin/bash -x


empSalary=0
partEmpSalary=0
empHour=8;
prtEmpHour=4;
hour=0
WAGE=200;
for (( i=0;i<30;i++ ))
do
	R=$(( RANDOM%3 ))

	if [ $R -eq 2 ]
	then
		absentSalary=0

	elif [ $R -eq 0 ]
	then
		hour=$(( $hour + $empHour ))

	elif [ $R -eq 1 ]
	then
		hour=$(( $hour + $prtEmpHour ))
	fi
done

salary=$(( $hour * $WAGE ))
