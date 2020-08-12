
#!/bin/bash -x

cat ~/Desktop/TerminalCommands/linux-content/access.log | awk '{print $11}' | sort | uniq -c | tail -4 | sort -n

