#!/bin/bash

# Website file change detection module

check_file_changes() {
    local SITE_PATH="$1"

    if [ -z "$SITE_PATH" ]; then
        echo "No website path provided"
        return 1
    fi

    if [ -d "$SITE_PATH" ]; then
        echo "Checking: $SITE_PATH"
        find "$SITE_PATH" -type f -name "*.php" | head -20
    else
        echo "Directory not found: $SITE_PATH"
    fi
}

check_file_changes "$1"
