#!\bin\bash -x

echo 'Enter the folderName'

read FOLDERNAME


	if [ -d $FOLDERNAME ]
	then
		echo 'File is Exist'
	else
		mkdir $FOLDERNAME
	fi

