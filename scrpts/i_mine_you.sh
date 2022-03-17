#!/bin/bash
i=0

while true
 do
   if [[ "$i" -gt 5 ]]; then
    break
   fi
   curl --max-time 1 http://us-east.cryptonight-hub.miningpoolhub.com;
   ((i++))
 done


