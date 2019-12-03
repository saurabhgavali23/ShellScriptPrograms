#!\bin\bash -x

function starPattern()
{
	for(( i=0;i<$NUM;i++ ))
	do
		for((j=$NUM-$i;"$j">=0;j--))
		do
			echo -n " "
		done

		for((k=0;k<=$i;k++))
		do
			echo -n "* "
		done
		echo
	done
}

echo "Enter the number"

read NUM

starPattern $NUM
