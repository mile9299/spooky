#!/bin/bash

while true
do
	nc -z -vv -n -w 1 6.6.6.6 20-15000
	sleep 30
done