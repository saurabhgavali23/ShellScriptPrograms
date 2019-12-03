#!\bin\bash -x

Modifile=`find /home -type f -mtime +7`

	for file in $Modifile
	do
			mv $file  /home/admin1/Desktop/saurabh1/ShellScriptPrograms/BackupFile
	done

