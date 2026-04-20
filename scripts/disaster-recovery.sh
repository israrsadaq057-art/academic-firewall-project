#!/bin/bash
echo "=== FIREWALL DISASTER RECOVERY STARTED ==="
if [ -f /backup/firewall/iptables-rules-latest.v4 ]; then
    iptables-restore < /backup/firewall/iptables-rules-latest.v4
    echo "✅ iptables rules restored"
fi
systemctl restart wg-quick@wg0
systemctl restart snort
ping -c 4 8.8.8.8
echo "=== DISASTER RECOVERY COMPLETED ==="
