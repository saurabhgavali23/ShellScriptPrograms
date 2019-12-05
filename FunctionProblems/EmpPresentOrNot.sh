#!/bin/bash -x

salary=0
salary1=0
hour=0
hours=0
WAGE=200;
empHour=8;
prtEmpHour=4;

function getWorkingHours()
{
	if [ $R -eq 0 ]
	then
		echo $(($hour+$empHour))
	else
		echo $(($hours+$prtEmpHour))
	fi
}
for (( i=0;i<30;i++ ))
do
	R=$(( RANDOM%3 ))

	if [ $R -eq 2 ]
	then
		absentSalary=0

	elif [ $R -eq 0 ]
	then
		hour="$( getWorkingHours $R $hour )"

	elif [ $R -eq 1 ]
	then
		hours="$( getWorkingHours $R $hours )"
	fi
done

fullTimeEmpSalary=$(( $hour * $WAGE ))
halfTimeEmpSalary1=$(( $hours * $WAGE ))
