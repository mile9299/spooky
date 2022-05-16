#!/bin/bash
i=0
LOG_NAME="malicious.log"
for ip in $(curl --compressed https://raw.githubusercontent.com/stamparm/ipsum/master/ipsum.txt 2>/dev/null | grep -v "#" | grep -v -E "\s[1-2]$" | cut -f 1);
 do
   if [[ "$i" -gt 3 ]]; then
   
    sleep 30000
    i=0
   fi
   curl --max-time 1 http://$ip;
   echo "curled malicious $ip" >> $LOG_NAME 
   sleep 5
   ((i++))

 done
