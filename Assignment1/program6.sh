
#!/bin/bash -x
for i in {ls,pwd,date,ps}
do
	$i
	if [ $? -eq 0 ]
	
	then
		echo $i "executed successfully"
	else
		echo $i "command not executed"
	fi
done
