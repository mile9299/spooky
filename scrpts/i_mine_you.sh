#!/bin/bash
i=0

for ip in $(curl --compressed https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/coinbl_ips.ipset 2>/dev/null | grep -v "#" | grep -v -E "\s[1-2]$" | cut -f 1);
 do
   if [[ "$i" -gt 5 ]]; then
    break
   fi
   curl --max-time 1 http://$ip;
   ((i++))
 done


