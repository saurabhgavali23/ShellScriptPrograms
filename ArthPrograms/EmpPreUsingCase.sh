#!/bin/bash -x

isPartTimeEmp=1
isFullTimeEmp=0
R=$(( RANDOM%3 ))

WAGE=200
empHour=0;
case $R in

	$isFullTimeEmp)
			empHour=8
			empSalary=$(( $empHour * $WAGE ));;
	$isPatrTimEmp)
			empHour=4
			empSalary=$(( $empHour * $WAGE));;
		*)
			empSalary=0
esac

