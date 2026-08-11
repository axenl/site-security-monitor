#!/bin/bash

# Enterprise WeChat notification module

send_wechat() {

    MESSAGE="$1"

    if [ -z "$WECHAT_WEBHOOK" ]; then
        echo "Webhook not configured"
        return 1
    fi

    curl -s "$WECHAT_WEBHOOK"     -H "Content-Type: application/json"     -d "{\"msgtype\":\"text\",\"text\":{\"content\":\"$MESSAGE\"}}"

}

send_wechat "$1"
