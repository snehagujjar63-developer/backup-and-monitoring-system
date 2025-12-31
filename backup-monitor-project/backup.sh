#!/bin/bash
SOURCE_DIR="/home/sneha/Documents"
BACKUP_DIR="/home/sneha/backup"
LOG_FILE="/home/sneha/logs/backup.log"
DATE=$(date +"%Y-%m-%d")
mkdir -p "$BACKUP_DIR"
mkdir -p "/home/sneha/logs"
tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" -C  "$SOURCE_DIR" .
if [ $? -eq 0 ]; then
echo "$DATE : backup successful" >>"$LOG_FILE"
else
echo "$DATE : backup_failed " >>"$LOG_FILE"
fi


