#!/bin/bash

# Joomla security scan module

scan_joomla() {
    local SITE_PATH="$1"

    if [ -z "$SITE_PATH" ]; then
        echo "No Joomla path provided"
        return 1
    fi

    echo "Scanning Joomla site: $SITE_PATH"

    find "$SITE_PATH"     -type f     \( -name "*.php" -o -name "*.phtml" \)     | head -50
}

scan_joomla "$1"
