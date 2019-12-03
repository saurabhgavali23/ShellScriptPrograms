#!\bin\bash -x

currentDate=$(date +%d%m%y);
	for file in `ls *.log.1`
	do
		baseName=`echo $file | awk -F. '{print $1}'`
		extName=`echo $file | awk -F. '{print $2}'`
		newFile=$baseName'-'$currentDate'.'$extName;
		mv $file $newFile
done

