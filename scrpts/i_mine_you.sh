#!/bin/bash
i=0

while true
 do
   if [[ "$i" -gt 5 ]]; then
    sleep 90
    i=0
   fi
   curl --max-time 1 http://us-east.cryptonight-hub.miningpoolhub.com;
   echo "CURLED crypto mining pool!" >> malicious.log

   sleep 30
   ((i++))
 done


