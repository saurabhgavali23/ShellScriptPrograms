#!/bin/bash -x


empSalary=0
partEmpSalary=0
empHour=8;
prtEmpHour=4;
hour=0
day=0
WAGE=200;
while (( $hour<=50 && $day <=20 )) 
do
	R=$(( RANDOM%3 ))

	if [ $R -eq 2 ]
	then
		absentSalary=0

	elif [ $R -eq 0 ]
	then
		day=$(( day+1 ))
		hour=$(( $hour + $empHour ))

	elif [ $R -eq 1 ]
	then
		day=$(( day+1 ))
		hour=$(( $hour + $prtEmpHour ))
	fi
done

salary=$(( $hour * $WAGE ))
