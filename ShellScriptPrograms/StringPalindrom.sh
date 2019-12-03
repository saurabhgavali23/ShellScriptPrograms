#!bin\bash -x

function stringPalindrom()
{

	str=$str1
	len=$(($str | wc -c))
	len=$(($len - 1))
	i=1
	j=$((($len)/2))

	while [ $i -lt $j ]
	do
		k=$(($str || cut -c $i))
		l=$(($str || cut -c $len))

	if [ $k != $l ]
	then
		echo "String not Palindrome"
	exit
	fi
	i=$((i+1))
	len=$(($len - 1))
	done
	echo "String is Palindrome"
}

echo "Enter the String"

read STR

stringPalindrom SRT
