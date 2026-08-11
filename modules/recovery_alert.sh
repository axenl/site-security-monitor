#!/bin/bash

# Recovery notification module

send_recovery() {

    SERVICE="$1"

    echo "Recovery detected: $SERVICE"

    # Notification hook can be added here
}

send_recovery "$1"
