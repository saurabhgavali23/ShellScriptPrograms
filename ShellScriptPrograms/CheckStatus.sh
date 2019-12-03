#!bin\bash -x

function checkStatus()
{
	if [ $? -eq 0 ]
	then
		echo 'Execute'
	else
		echo 'Not Execute'
	fi
}


echo 'Status of Hello'

cmd="hello"
$cmd
checkStatus

echo 'Status of ls'

cmd="ls"
$cmd
checkStatus 
