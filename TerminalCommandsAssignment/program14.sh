
#!/bin/bash -x

echo "Basepay greater than 10000: "
cat ../linux-content/data.csv | awk '{if($4>10000) print $4}'

echo "Employee name and the Basepay: "
cat ../linux-content/data.csv | awk '{print $2" "$7}'

echo "Name which have captain as a jobTitle: "
cat ../linux-content/data.csv | grep -i captain

echo "print the sum of TotalPay"
cat ../linux-content/data.csv | grep -i captain | awk '{sum=sum+$7} END {print sum}'

echo "job title and overtimePay greaater than 7000 and less than 10000: "
cat ../linux-content/data.csv | awk '{if($5>7000 && $5<10000)print $3" "$5}'

echo "Average of BasePay: "
cat ../linux-content/data.csv | awk '{sum+=$4}END {print sum/NR}'
