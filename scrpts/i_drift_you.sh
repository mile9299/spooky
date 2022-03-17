#!/bin/bash

while true
do
	cp /bin/ls ./ls_drifted
	sleep 10
	rm ./ls_drifted
done