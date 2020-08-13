
#!/bin/bash -x

cat ../linux-content/access.log | awk '{print $24}' | sort | uniq -c | tail -4 | sort -n
