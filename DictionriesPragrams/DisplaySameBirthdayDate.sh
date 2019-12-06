#!/bin/bash -x

declare -A year

for (( i=0;i<50;i++ ))
do

	month=$((1+RANDOM%12))

	year[$month]=$(("${year[$month]}"+1))
done

for ((date=1;date<=12;date++))
do
	echo "Month$date  ${year[$date]}"
done
