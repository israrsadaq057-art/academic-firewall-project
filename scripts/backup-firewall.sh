#!/bin/bash
BACKUP_DIR="/backup/firewall"
DATE=$(date +%Y%m%d_%H%M%S)
mkdir -p $BACKUP_DIR
iptables-save > $BACKUP_DIR/iptables-rules-$DATE.v4
cp /etc/wireguard/wg0.conf $BACKUP_DIR/wireguard-$DATE.conf
find $BACKUP_DIR -type f -mtime +30 -delete
echo "Backup completed at $DATE"
