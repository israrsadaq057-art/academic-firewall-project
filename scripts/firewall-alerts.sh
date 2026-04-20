#!/bin/bash
# Telegram alert script
BOT_TOKEN="YOUR_BOT_TOKEN"
CHAT_ID="YOUR_CHAT_ID"

tail -f /var/log/syslog | while read line; do
    if echo "$line" | grep -q "DROP"; then
        curl -s -X POST https://api.telegram.org/bot$BOT_TOKEN/sendMessage \
            -d chat_id=$CHAT_ID \
            -d text="🚨 Firewall Alert: $line" > /dev/null
    fi
done
