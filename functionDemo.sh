#!/bin/bash -x
function demo(){

	echo $(( $1 + $2 ))
}
result=$( demo $((RANDOM%3)) $((RANDOM%2)));
if [ $result -eq 1 ]
then
	echo "success";
else
	echo "Failure";
fi

#here $1 is for first parameter $2 for second parameter and so on inputed by user
