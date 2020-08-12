#!/bin/bash -x
cat ../linux-content/access.log | awk '{print $4" "$7}' | awk -F: '{ if($2>=04 && $2 <=05)print $0}' | sort | uniq -c | tail -4 | sort -n
