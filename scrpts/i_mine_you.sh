#!/bin/bash
COUNTER=0

for ip in $(curl --compressed https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/coinbl_ips.ipset 2>/dev/null | grep -v "#" | grep -v -E "\s[1-2]$" | cut -f 1);
 do
   curl http://$ip --max-time 1
   let COUNTER++
   if [[ $COUNTER -gt 10 ]]; then
    break
   fi
 done

