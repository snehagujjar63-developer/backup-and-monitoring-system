#!/bin/bash
LOG_FILE="/home/sneha/logs/monitor.log"
DATE=$(date)
DISK_USAGE=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}') 
MEMORY_USAGE=$(free | awk '/Mem:/ {printf "%.2f%%", $3/$2*100}')
echo "$DATE -Disk: ${DISK_USAGE}%, Memory: $MEMORY_USAGE%">> "$LOG_FILE"
if [ "$DISK_USAGE" -gt 80 ]; then
echo "$DATE - WARNING: Disk usage above 80%" >> "$LOG_FILE"
fi
