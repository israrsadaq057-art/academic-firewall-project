# 🏛️ Academic Institution Firewall Project

## Project Overview
Complete enterprise firewall solution for an academic institution with:
- 5 VLANs (Academic, Administration, Research, Guest, DMZ)
- Stateful firewall rules with inter-zone isolation
- NAT for internet access
- WireGuard VPN for remote access
- Snort IDS/IPS
- QoS traffic shaping
- CARP high availability (active-passive)
- Central logging and Telegram alerts
- Automated backup and disaster recovery


## Technologies Used
| Component | Technology |
|-----------|------------|
| Firewall | pfSense / OPNsense / iptables |
| VPN | WireGuard |
| IDS/IPS | Snort |
| High Availability | CARP / VRRP |
| Monitoring | rsyslog + Telegram Bot |
| Virtualization | VirtualBox |

## Repository Structure
academic-firewall-project/
├── README.md
├── html-diagram.html # Interactive architecture diagram
├── configs/ # Configuration files
│ ├── pfSense-config.xml
│ ├── snort-custom.rules
│ ├── wireguard-server.conf
│ └── wireguard-client.conf
├── scripts/ # Automation scripts
│ ├── backup-firewall.sh
│ ├── firewall-alerts.sh
│ └── disaster-recovery.sh
└── documentation/ # Detailed guides
├── 02-vlan-configuration.md
├── 03-firewall-rules.md
├── 04-nat-configuration.md
├── 05-vpn-setup.md
├── 06-ids-ips-setup.md
├── 07-qos-configuration.md
├── 08-high-availability.md
├── 09-monitoring-alerts.md
└── 10-backup-disaster-recovery.md


## Quick Start
1. Import `configs/pfSense-config.xml` into pfSense
2. Load `scripts/backup-firewall.sh` on admin server
3. Configure WireGuard using `configs/wireguard-server.conf`

## Author
Israr Sadaq | Network Engineer
