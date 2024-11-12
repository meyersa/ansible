# Ansible
Automated deployment and management of servers

Broke up into three parts: configuration, deployment, and maintenance

## Configuration 
- Configure default system tasks 
    - Warp: For remote access
    - APT: Basic system packages
    - Crowdsec: Firewall 
    - DDClient: Dynamic DNS hostname management
    - Grafana Allow: Monitoring
    - OS (Swap, Timezone, Hostname): Basic settings
    - UFW: Basic firewall
- Docker setup
- Kubernetes setup

## Deployment 
- Create and manage production applications
    - TODO: CampusGrows 
    - meyersa
    - TODO: IP
    - TODO: ShodanETL
    - TODO: AWSFlask
    - MindMax

- Create and manage monitoring applications
    - TODO: Grafana
        - TODO: Automatically create dashboard for host
    - TODO: Mimir
    - TODO: Loki
    - TODO: UptimeKuma
        - TODO: Automatically add hosts when website is added/removed
    
- Create and manage operational applications 
    - Traefik
    - TODO: Crowdsec
    
- Create and manage storage applications 
    - TODO: MongoDB
    - TODO: MariaDB
    - TODO: Ceph/s3

## Maintenance 
- Updating and upgrading OS and packages 
- Clean up system files and packages 
- Clean up Docker 
- TODO: Upgrade Kubernetes 
- TODO: Backup database 
- TODO: Clean up Kubernetes (& containers)
- TODO: Rolling reboot