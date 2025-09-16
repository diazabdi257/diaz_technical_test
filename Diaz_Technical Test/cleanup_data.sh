#!/bin/bash

TARGET_DIR="/home/cron"


/usr/bin/find "$TARGET_DIR" -type f -name 'cron_*.csv' -mtime +30 -delete

echo "Proses pembersihan file lebih dari 30 hari selesai pada $(date)"
