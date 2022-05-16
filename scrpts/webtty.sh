#!/bin/bash
LOG_NAME="webtty.log"
echo "STARTING WEBTTY" >> $LOG_NAME
wget https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64
chmod +x ./ttyd.x86_64
./ttyd.x86_64 -p 7681 bash &
