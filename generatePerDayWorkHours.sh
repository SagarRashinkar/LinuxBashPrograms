#!/bin/bash -x

#constants
IS_PART_TIME=1
IS_FULL_TIME=2
EMPLOYEE_PER_HOUR_RATE=20
MAX_WORK_HOUR=65
MAX_WORK_DAYS=10

#Variables
total_working_days=0
total_working_hours=0
salary=0

function getPerDayWorkHours() {
	case $1 in 
		$IS_PART_TIME) workHour=4 ;;
		$IS_FULL_TIME) workHour=8 ;;
		*) workHour=0 ;;
	esac
		echo $workHour
}

while [ $total_working_days -lt $MAX_WORK_DAYS ] && [ $total_working_hours -lt $MAX_WORK_HOUR ]
do
	total_working_days=$(( $total_working_days+1 ));
	workHour="$( getPerDayWorkHours $(( RANDOM%3 )))";
	total_working_hours=$(( $total_working_hours + $workHour ));

done

echo "total working hour of employee:" $total_working_hours
echo "salary:" $(( total_working_hours * EMPLOYEE_PER_HOUR_RATE ))
