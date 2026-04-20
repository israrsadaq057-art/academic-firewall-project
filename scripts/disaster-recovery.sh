#!/bin/bash
# Disaster recovery script
echo "=== FIREWALL DISASTER RECOVERY STARTED ==="

# Restore iptables rules
if [ -f /backup/firewall/iptables-rules-latest.v4 ]; then
    iptables-restore < /backup/firewall/iptables-rules-latest.v4
    echo "✅ iptables rules restored"
fi

# Restart WireGuard
systemctl restart wg-quick@wg0
echo "✅ WireGuard restarted"

# Restart Snort
systemctl restart snort
echo "✅ Snort restarted"

# Verify connectivity
ping -c 4 8.8.8.8
echo "=== DISASTER RECOVERY COMPLETED ==="
