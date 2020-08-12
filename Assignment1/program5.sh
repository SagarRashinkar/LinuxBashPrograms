
#!/bin/bash

folderName=sagar;
if [ -d $folderName ];
then
	echo "folder $folderName is already present";
else
	echo "folder $folderName is not present";
	echo "creating folder $folderName `mkdir $folderName`";
fi

