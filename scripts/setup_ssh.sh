#!/bin/bash

# This script configures SSH settings for secure access, including enabling key-based authentication.

# Update SSH configuration to allow key-based authentication
sudo sed -i "s/^#\?PubkeyAuthentication.*/PubkeyAuthentication yes/" /etc/ssh/sshd_config
sudo sed -i "s/^#\?PasswordAuthentication.*/PasswordAuthentication no/" /etc/ssh/sshd_config

# Restart SSH service to apply changes
sudo systemctl restart ssh

# Generate SSH key pair if it doesn't exist
if [ ! -f "$HOME/.ssh/id_ed25519" ]; then
    echo "Generating SSH key pair..."
    ssh-keygen -t ed25519 -C "your_email@example.com" -N "" -f "$HOME/.ssh/id_ed25519"
else
    echo "SSH key pair already exists."
fi

# Display public key for user to copy
echo "Your public key is:"
cat "$HOME/.ssh/id_ed25519.pub"
echo "Copy this key to your remote server's authorized_keys file."