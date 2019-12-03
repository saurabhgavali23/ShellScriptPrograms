#!bin\bash -x

function flipCoin()
{
	N=$1
	HEAD=0
	TAIL=0
	for ((i=0;i<$N;i++))
	do
		rand=$((RANDOM%2))

		if (( $rand == 1 ))
		then
			HEAD=$((HEAD+1))
		else
			TAIL=$((TAIL+1))
		fi
	done
	echo $HEAD
	echo $HEAD
	HEADPER=$((($HEAD*100)/$N))
	TAILPER=$((($TAIL*100)/$N))
	echo "Head Percentage is $HEADPER"
	echo "Tail Percentage is $TAILPER"
}

echo "Enter the Number"

read NUM

flipCoin $NUM;
