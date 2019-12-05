#!/bin/bash -x

salary=0
salary1=0
hour=0
hours=0
WAGE=200;
dayliWage=30;
empHour=8;
prtEmpHour=4;
count=0;
temp=0;
temp1=0;
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
		arr[((count++))]=$dayliWage;
		temp=$(($temp+$dayliWage))
		totalWage[0]=$temp;
		hour="$( getWorkingHours $R $hour )"

	elif [ $R -eq 1 ]
	then
		arr1[((count++))]=$dayliWage;
		temp1=$(($temp1+$dayliWage))
		totalWage1[0]=$temp1;
		hours="$( getWorkingHours $R $hours )"
	fi
done

fullTimeEmp=$(($hour * $WAGE ))
partTimeEmp=$(($hours * $WAGE ))

echo ${arr[@]}
echo ${totalWage[@]}
echo ${arr1[@]}
echo ${totalWage1[@]}
