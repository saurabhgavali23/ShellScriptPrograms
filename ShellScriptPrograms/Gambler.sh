#!\bin\bash -x
echo "Enter the Stake value"

read STAKE

echo "Enter the Goals value"

read GOALS

echo "Enter the Trails value"

read TRAILS

function gambler()
{

win=0
beat=0
	for((i=0; i<$TRAILS; i++))
	do
		rand=$((RANDOM%2))
	CASH=$STAKE
	while [[ $CASH -gt 0 && $CASH -lt $GOALS ]]
	do
		echo "whileloop"
		beat=$(($beat + 1))
		if [ $rand -eq 1 ]
		then
			CASH=$(($CASH + 1 ))
			echo "cash incr"
		else
			CASH=$(($CASH - 1 ))
			echo "cash decr"
		fi

	if [ $CASH -eq $GOALS ]
	then
		win=$(($win + 1))
		echo "akldjljs"
	fi
	done
	done

	winper=$((($win*100)/$TRAILS))
	beatper=$((($beat*1)/$TRAILS))


	echo "win percentage is $winper"
	echo "beat percentage is $beatper"
}



gambler $TRAILS $STAKE $GOALS 


