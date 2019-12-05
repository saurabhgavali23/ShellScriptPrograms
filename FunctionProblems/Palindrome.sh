#!/bin/bash -x

read -p "Enter the first value " x

read -p "Enter the Second value " y

function isPalindrome()
{
	n=$1
	sum=0
	r=0

	while [ $n -gt 0 ]
	do
		r=$(($n % 10))
		sum=$((($sum * 10)+$r))
		n=$(($n / 10))
	done
		echo $sum
}

x="$( isPalindrome $x )"

y="$( isPalindrome $y )"

if [ $x -eq $y ]
then
	echo "it is palindrome"
else
	echo "it is not palindrome"
fi
