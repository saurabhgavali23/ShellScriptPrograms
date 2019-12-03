#!bin\bash -x

for file in `ls /home/admin1/Desktop/saurabh1/TerminalCommand/*.log*`
do
	count=`grep -o "systemd" $file | wc -l`

	if [ $count -gt 0 ]
	then
		echo $file "systemd count is: " $count
	fi
done
