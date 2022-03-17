#!/bin/bash

while true
do
	nc -z -vv -n -w 1 6.6.6.6 80-443
	sleep 30
done