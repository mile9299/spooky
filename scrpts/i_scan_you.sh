#!/bin/bash

while true
do
  echo "PORT SCANNING started" >> malicious.log
	nc -z -vv -n -w 1 6.6.6.6 80,443
	echo "PORT SCANNING ended" >> malicious.log

	sleep 120
done