#!/bin/bash

# Install PostgreSQL and its contrib package
sudo apt update
sudo apt install -y postgresql postgresql-contrib

# Prompt for a secure password for the PostgreSQL 'postgres' user
read -s -p "Enter a secure password for the PostgreSQL 'postgres' user: " POSTGRES_PASSWORD
echo

# Set the password for the 'postgres' user
sudo -u postgres psql -c "ALTER USER postgres PASSWORD '$POSTGRES_PASSWORD';"

# Enable PostgreSQL to start on boot
sudo systemctl enable postgresql
sudo systemctl start postgresql

# Verification step
echo "PostgreSQL installation and configuration completed."
echo "You can connect to PostgreSQL using: sudo -u postgres psql"