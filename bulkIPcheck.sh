#!/bin/bash
# bulkping
date
# taking IP addresses from the file.txt
grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' file.txt > iplist.txt

# does ping for each IP and gives result 
cat iplist.txt |  while read output
do
 ping -c 1 "$output" > /dev/null
     if [ $? -eq 0 ]; then
     echo "$output is UP"
     else
     echo "$output is down"
     fi
done
