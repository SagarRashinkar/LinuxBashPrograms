
#!/bin/bash
cat ../linux-content/access.log | awk '{if($9>200)print $4" "$9}' | sort | uniq -u | sort -n | tail -4

