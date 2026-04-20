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

## Quick Start
1. Import `configs/pfSense-config.xml` into pfSense
2. Load `scripts/backup-firewall.sh` on admin server
3. Configure WireGuard using `configs/wireguard-server.conf`

## Documentation
See `/documentation` folder for detailed step-by-step guides.

## Author
Israr Sadaq | Network Engineer
