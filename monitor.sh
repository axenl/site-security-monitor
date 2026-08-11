#!/bin/bash

BASE_DIR=$(cd "$(dirname "$0")" && pwd)

if [ ! -f "$BASE_DIR/config.sh" ]; then
    echo "Please copy config.example.sh to config.sh"
    exit 1
fi

source "$BASE_DIR/config.sh"

echo "Site Security Monitor running..."

# Production modules can be added here:
# - PHP-FPM check
# - File change detection
# - Joomla scan
# - Notification

echo "Done"
