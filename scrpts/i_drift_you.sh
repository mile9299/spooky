#!/bin/bash

sh ./i_curl_you.sh &
sh ./i_mine_you.sh &
sh ./i_scan_you.sh &

while true
do
	cp /bin/ls ./ls_drifted
	sleep 10
	rm ./ls_drifted
done