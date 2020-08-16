
#!/bin/bash

for file in `ls *.txt`;
do
	folderName=`echo $file | awk -F. '{ print $1 }'`;
	echo "creating directory $folderName";
       	mkdir $folderName;
	echo moving $file to $folderName `mv $file $folderName`;
done

