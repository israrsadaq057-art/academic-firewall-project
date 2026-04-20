#!/bin/bash
# Firewall backup script
BACKUP_DIR="/backup/firewall"
DATE=$(date +%Y%m%d_%H%M%S)

# Backup pfSense config
scp admin@10.10.1.1:/cf/conf/config.xml $BACKUP_DIR/pfsense-config-$DATE.xml

# Backup iptables rules (if using Linux)
iptables-save > $BACKUP_DIR/iptables-rules-$DATE.v4

# Backup WireGuard config
cp /etc/wireguard/wg0.conf $BACKUP_DIR/wireguard-$DATE.conf

# Keep last 30 days
find $BACKUP_DIR -type f -mtime +30 -delete

echo "Backup completed: $DATE"
