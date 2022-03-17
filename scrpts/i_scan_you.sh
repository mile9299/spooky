#!/bin/bash

while true
do
	nc -z -nv 127.0.0.1 20-32000
	sleep 10
done