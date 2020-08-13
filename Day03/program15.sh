#!/bin/bash

if [ -d original,updated ]
then
	echo "folder is already present"
else
	mkdir original updated
fi

cp original.sh original/
cp updated.sh updated/

diff original updated

diff original ../originalBackup
