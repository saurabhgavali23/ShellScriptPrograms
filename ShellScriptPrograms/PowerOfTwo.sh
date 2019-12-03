#!\bin\bash -x

function powerOfTwo()
{
	POWER=1
	for ((i=0;i<$N;i++))
	do
		POWER=$((2*$POWER))

		echo "2 * $i Power is $POWER" 
	done
}

echo "Enter the number"

read NUM

powerOfTwo $NUM
