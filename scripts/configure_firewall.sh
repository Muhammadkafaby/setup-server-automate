#!/bin/bash

# Configure the firewall using UFW

# Allow SSH connections
sudo ufw allow 22/tcp

# Allow HTTP and HTTPS traffic
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

# Enable the firewall
sudo ufw enable

# Check the status of the firewall
sudo ufw status verbose

# Output a message indicating the firewall has been configured
echo "Firewall has been configured to allow SSH, HTTP, and HTTPS traffic."