#!/bin/bash -x

declare -A dieRoll
die=0
dieNo=0
count=0
function rollADie()
{

	while (( count == 0 ))
	do
	 	die=$((1+RANDOM%6))
		dieRoll[$die]=$(( "${dieRoll[$die]}" + 1 ))
		dieNo="${dieRoll[$die]}"

		if (( dieNo == 10 ))
		then
			count=$(($count+1))
		 fi
	done

}
rollADie

#echo ${dieRoll[@]}

for (( die=1; die<${#dieRoll[@]}; die++ ))
do
	echo "Die_$die ${dieRoll[$die]}"
done
 
