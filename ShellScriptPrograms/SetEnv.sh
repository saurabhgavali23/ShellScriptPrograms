#!\bin\bash -x

cmd=`env | grep -i usersecret`

	if [ -z $cmd ]
	then
		export usersecret="dH34xJaa23"
	else
		unset usersecret
		echo "Already Exits and Unset the usersecret"
	fi

