#!/bin/bash

while true
do
	cp /bin/ls ./ls_drifted
	./ls_drifted
	sleep 5
	cat /veryMalicious/vlc_amv.html
	sleep 10
	rm ./ls_drifted
done