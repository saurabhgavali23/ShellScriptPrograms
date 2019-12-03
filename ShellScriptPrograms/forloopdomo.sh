#!bin/bash -x

for file in `ls *.txt`;
do
		abc=`echo $file |awk -F. '{print $1}'`;
		#echo "creating for already existing directory started";
		if [ -d abc ];
		then
				rm -R $abc;
		fi
		#echo creating folder $(abc);
		mkdir $abc;
		#echo copying $(file) to $(abc);
		cp $file $abc;
done
