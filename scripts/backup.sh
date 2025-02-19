#!/bin/bash

# Backup script for automated backups using rsync

# Default backup directory
BACKUP_DIR="/backup"

# Prompt for backup directory
read -p "Enter the backup directory (default: $BACKUP_DIR): " USER_BACKUP_DIR
BACKUP_DIR=${USER_BACKUP_DIR:-$BACKUP_DIR}

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Define source directories to back up
SOURCE_DIRS=("/var/www" "/etc/nginx" "/etc/postgresql" "/home")

# Perform the backup using rsync
for DIR in "${SOURCE_DIRS[@]}"; do
    rsync -av --delete "$DIR" "$BACKUP_DIR"
done

# Log the backup operation
echo "Backup completed successfully to $BACKUP_DIR on $(date)" >> /var/log/backup.log