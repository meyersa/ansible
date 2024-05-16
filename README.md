# Ansible
Automated deployment and management of servers

## Deployment

### All Hosts
- Apt update/upgrade
- Install dnsutil/netutil
- Set datetimectl to America/Detroit
- Install Crowdsec bouncer
- Configure monitoring agent
- DDNS Script

### If Backups
- Configure Backups

### If Docker
- Install Docker
- Configure watchtower
- Configure cloudflared

### If K8
- Install Kubernetes

## Management
- Regular update
- Regular Backup (Cron?)
- Push changes

## Problems
User creation: Depending on the cloud provider some servers are created with username/password + key and others are created with simply username and passwordless sudo. How should this be standardized? Currently the default user will be switched to passwordless sudo using the initial.sh script. 