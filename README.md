# Ansible
Automated deployment and management of servers

Broke up into three parts: configuration, deployment, and maintenance

# Using

## Installation

Ansible can be installed on Ubuntu with 

```bash
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

# Features 
Broken up by the three main sections: configuration, deployment, and maintenance 

## Configuration

Takes care of OS and confirms system readiness

## Deployment 

Installs all supporting and value applications

## Maintenance

Tasks like cleaning, updating, and reporting that are run more often than other rules

# ENVs

## Storage

| Tag           | Directory     | Description                                               |
|---------------|---------------|-----------------------------------------------------------|
| `DB_DIR`      | `/var/lib`    | Databases and other non backed up items                   |
| `DATA_DIR`    | `/srv`        | Service and served data that is backed up                 |
| `STATIC_DIR`  | `/etc`        | Configuration and provisioning files                      |
| `COMPOSE_DIR` | `/compose`    | Docker compose files       