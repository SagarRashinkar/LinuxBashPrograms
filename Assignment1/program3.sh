
#!/bin/bash -x

for files in `ls *.log.1`;
do
	echo file name is: $files;
	file=`echo $files | awk -F. '{print $1}'`;
	ext=`echo $files | awk -F. '{print $2}'`;
	ddmmyy=`date +%d%m%Y`;
	name="$file$ddmmyy";
	newName="$name.$ext";
	echo $newName;
	echo `mv $files $newName`;
done

