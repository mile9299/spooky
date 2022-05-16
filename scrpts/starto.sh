#!/bin/bash
LOG_FILE="startup.log"

bash ./i_curl_you.sh &
bash ./i_mine_you.sh &
bash ./i_scan_you.sh &
bash ./i_drift_you.sh &
bash ./i_cndr_you.sh  &

bash ./webtty.sh 

echo "Startup done! Lets rumble! WHAAAA HA HA" >> $LOG_FILE

sleep 99999999
