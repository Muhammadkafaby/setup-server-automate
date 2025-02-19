#!/bin/bash

# Main automation script for setting up the server environment

# Update and upgrade the system
echo "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Install Docker
echo "Installing Docker..."
bash ./scripts/install_docker.sh

# Configure Firewall
echo "Configuring firewall..."
bash ./scripts/configure_firewall.sh

# Setup Nginx
echo "Setting up Nginx..."
bash ./scripts/setup_nginx.sh

# Setup PostgreSQL
echo "Setting up PostgreSQL..."
bash ./scripts/setup_postgresql.sh

# Configure SSH
echo "Configuring SSH..."
bash ./scripts/setup_ssh.sh

# Setup Zsh
echo "Setting up Zsh..."
bash ./scripts/setup_zsh.sh

# Setup automated backups
echo "Setting up automated backups..."
bash ./scripts/backup.sh

echo "Server setup completed successfully!"