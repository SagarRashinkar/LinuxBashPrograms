#!/bin/bash -x

exist=`env | awk -F='{print $1}' | grep -w usersecret`
echo $exist
if [ !exist ]
then
	export usersecret=dH34xJaa23
else
	unset usersecret
fi

