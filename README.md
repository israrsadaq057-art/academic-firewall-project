# 🏛️ Academic Institution Firewall Project

## Project Overview
Complete enterprise firewall solution for an academic institution.

## Architecture
- 5 VLANs (Academic, Administration, Research, Guest, DMZ)
- Stateful firewall rules with inter-zone isolation
- NAT for internet access
- WireGuard VPN for remote access
- Snort IDS/IPS
- QoS traffic shaping
- CARP high availability
- Central logging and Telegram alerts

## VLAN Configuration
| VLAN | Name | Subnet |
|------|------|--------|
| 10 | Academic | 10.10.10.0/24 |
| 20 | Administration | 10.10.20.0/24 |
| 30 | Research | 10.10.30.0/24 |
| 40 | Guest | 10.10.40.0/24 |
| 99 | DMZ | 172.16.0.0/24 |

## Author
Israr Sadaq | Network Engineer
