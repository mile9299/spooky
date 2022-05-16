#!/bin/bash
LOG_NAME="malicious.log"
while true
do
        echo "PORT SCANNING started" >> $LOG_NAME
	nc -z -vv -n -w 1 8.8.8.8 25,80,443
	echo "PORT SCANNING ended" >> $LOG_NAME

	sleep 30000
done
