read -p "enter number :" number

count=false;
for (( i=1;i<=$number/2;i++ ))
do
	if [ `expr $number % $i` -eq 0 ]
	then
		count=$(( $count+1 ))
	fi
done
if [ $count == 1 ]
then
	echo "Prime"
else
	echo "Not Prime"
fi
