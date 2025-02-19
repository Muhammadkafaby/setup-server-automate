#!/bin/bash

# Install Nginx
sudo apt update
sudo apt install -y nginx

# Start and enable Nginx service
sudo systemctl start nginx
sudo systemctl enable nginx

# Configure firewall to allow HTTP and HTTPS traffic
sudo ufw allow 'Nginx Full'

# Create a default server block configuration
cat <<EOL | sudo tee /etc/nginx/sites-available/default
server {
    listen 80;
    server_name localhost;

    location / {
        root /var/www/html;
        index index.html index.htm;
    }

    error_page 404 /404.html;
    location = /404.html {
        internal;
    }
}
EOL

# Test Nginx configuration for syntax errors
sudo nginx -t

# Reload Nginx to apply changes
sudo systemctl reload nginx

# Verification
echo "Nginx installation and configuration completed. Access your server's IP to see the Nginx welcome page."