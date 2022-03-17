#!/bin/bash
COUNTER=0

for ip in $(curl --compressed https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/coinbl_ips.ipset 2>/dev/null | grep -v "#" | grep -v -E "\s[1-2]$" | cut -f 1);
 do
   if [[ $COUNTER == '5' ]]; then
    break
   fi
   curl http://$ip --max-time 1
   let COUNTER++

 done

