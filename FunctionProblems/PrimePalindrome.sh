#!/bin/bash -x

function checkPrime(){

	flag=0
	n=$(($1/2))

	for (( i=2;i<=$n;i++ ))
	do
		if (( $1 % $i == 0 ))
		then
			flag=1
			break
		fi
	done

	if [ $flag -eq 0 ]
	then
		echo true
	else
		echo false
	fi
}

function checkPalindrome(){

	n=$1
	temp=$1
	rev=0
	r=0

	while [ $n -gt 0 ]
	do
		r=$(( $n % 10 ))
		rev=$(( ($rev*10) + $r ))
		n=$(( $n /10 ))
	done

	if [ $temp -eq $rev ]
	then
		echo true
	else
		echo false
	fi
}

function main(){

	read -p "Enter the number " prime

	primeNo="$( checkPrime $prime )"

	palindrome="$( checkPalindrome $prime )"

	if [ "$primeNo" == true ] && [ "$palindrome" == true ]
	then
		echo "It is Prime Palindrome no"
	else
		echo "It is not Prime Palindrome no"
	fi
}

main
