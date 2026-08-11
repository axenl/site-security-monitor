#!/bin/bash

BASE_DIR=$(cd "$(dirname "$0")" && pwd)
MODULE_DIR="$BASE_DIR/modules"

if [ ! -f "$BASE_DIR/config.sh" ]; then
    echo "Missing config.sh"
    echo "Please copy config.example.sh to config.sh"
    exit 1
fi

source "$BASE_DIR/config.sh"

echo "================================="
echo "Site Security Monitor started"
echo "================================="

# PHP-FPM service check
if [ "$CHECK_PHP_FPM" = true ]; then
    echo "[1/5] Checking PHP-FPM..."
    bash "$MODULE_DIR/php_fpm_check.sh"
fi


# Website file integrity check
if [ "$CHECK_FILE_CHANGE" = true ]; then
    echo "[2/5] Checking website files..."

    for SITE in "${WEBSITES[@]}"; do
        bash "$MODULE_DIR/file_integrity_check.sh" "$SITE"
    done
fi


# Joomla security scan
if [ "$CHECK_JOOMLA" = true ]; then
    echo "[3/5] Running Joomla security scan..."

    for SITE in "${WEBSITES[@]}"; do
        bash "$MODULE_DIR/joomla_security_scan.sh" "$SITE"
    done
fi


# Notification handler
if [ -n "$WECHAT_WEBHOOK" ]; then
    echo "[4/5] Notification test..."
    bash "$MODULE_DIR/notify_wechat.sh" "Site Security Monitor check completed"
else
    echo "[4/5] Notification disabled"
fi


# Recovery handler placeholder
echo "[5/5] Recovery module ready"

echo "================================="
echo "Monitoring completed"
echo "================================="
