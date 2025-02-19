#!/bin/bash

# Install Zsh
sudo apt install -y zsh

# Install Oh-My-Zsh for root
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
sudo chsh -s "$(which zsh)" root

# Install Oh-My-Zsh for the new user
read -p "Enter the username for the new user: " NEW_USER
sudo -u $NEW_USER sh -c 'export RUNZSH=no; sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended'
sudo chsh -s "$(which zsh)" $NEW_USER

# Set Zsh as the default shell for all users
echo "Zsh installation and configuration completed. Please log out and log back in for changes to take effect."