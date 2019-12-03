#!\bin\bash -x

function palindrome()
{
	TEMP=$NUM;
	SUM=0;
	while [ $NUM -gt 0 ]
	do
	 	R=$(($NUM % 10))
		SUM=$((($SUM * 10) + $R))
		NUM=$(($NUM / 10))
	done

	if [ $TEMP -eq $SUM ]
	then
		echo "$SUM Number is Palindrome";
	else
		echo "$SUM Number is Not Palindrome";
	fi
}

echo "Enter the Number";

read NUM;

palindrome $NUM;

