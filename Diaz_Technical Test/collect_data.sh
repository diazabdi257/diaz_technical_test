#!/bin/bash

TARGET_DIR="/home/cron"

FILENAME="cron_$(date +'%Y-%m-%d_%H%M').csv"
FILEPATH="$TARGET_DIR/$FILENAME"

echo "timestamp,metric_name,metric_value" > "$FILEPATH"
echo "$(date +'%Y-%m-%d %H:%M:%S'),temperature,25.5" >> "$FILEPATH"
echo "$(date +'%Y-%m-%d %H:%M:%S'),humidity,60.2" >> "$FILEPATH"

echo "Data dikoleksi ke $FILEPATH pada $(date)"
