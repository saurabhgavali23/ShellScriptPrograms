 #!/bin/bash -x

x1=$(( RANDOM%1000 ))

x2=$(( RANDOM%1000 ))

x3=$(( RANDOM%1000 ))

x4=$(( RANDOM%1000 ))

x5=$(( RANDOM%1000 ))


if (( $x1 > $x2 & $x1 > $x3 & $x1 > $x4 & $x1 > $x5 ))
then
	echo "Max x1 $x1"
else 
	if (( $x2 > $x3 & $x2 > $x4 & $x2 > $x5 ))
	then
		echo "Max x2 $x2"
	else
		if (( $x3 > $x4 & $x3 > $x5 ))
		then
			echo "Max x3 $x3"
		else
			if (( $x4 > $x5 ))
			then
				echo "Max x4 $x4"
			elif (( $x4 < $x5 ))
			then
				echo "Min x5 $x4"
			fi
		fi
	fi
fi
