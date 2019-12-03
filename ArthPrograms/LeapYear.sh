#!\bin\bash -x

function leapYear()
{
	if (( $1 % 4 == 0 ))
	then
		if (( $1 % 100 == 0 ))
		then
			if (( $1 % 400 == 0 ))
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
