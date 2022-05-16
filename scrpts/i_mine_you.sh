#!/bin/bash
i=0
LOG_NAME="malicious.log"
while true
 do
   if [[ "$i" -gt 2 ]]; then
    sleep 30000
    i=0
   fi
   curl --max-time 1 http://us-east.cryptonight-hub.miningpoolhub.com;
   echo "CURLED crypto mining pool!" >> $LOG_NAME

   sleep 30
   ((i++))
 done


