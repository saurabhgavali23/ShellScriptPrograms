#!\bin\bash -x

function leapYear()
{
	if [ `expr $1 % 4` -eq 0 ]
	then
		if [ `expr $1 % 100` -eq 0 ]
		then
			if [ `expr $1 % 400` -eq 0 ]
			then
				echo "It Is LeapYear"
			else
				echo "It Is Not LeapYear"
			fi
		else
			echo "It Is LeapYear"
		fi
	else
		echo "It is Not LeapYear"
	fi
}


echo "Enter the Number"

read NUM

leapYear $NUM
