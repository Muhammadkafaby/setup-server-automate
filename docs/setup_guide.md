# DevOps Environment Setup Guide

This setup guide provides detailed instructions on how to use the automation scripts included in the DevOps setup project. Follow the steps below to prepare your server environment efficiently.

## Prerequisites

Before running the setup scripts, ensure that you have the following:

- A freshly installed Ubuntu server (tested on Ubuntu 20.04+).
- Root or sudo access to the server.
- Basic knowledge of command-line operations.

## Overview of Scripts

The project includes several scripts that automate the setup of various components in your DevOps environment:

1. **setup_server.sh**: The main script that orchestrates the entire setup process by calling other scripts.
2. **install_docker.sh**: Installs Docker and Docker Compose.
3. **configure_firewall.sh**: Configures the firewall using UFW.
4. **setup_nginx.sh**: Installs and configures the Nginx web server.
5. **setup_postgresql.sh**: Installs and configures PostgreSQL.
6. **setup_ssh.sh**: Configures SSH for secure access.
7. **setup_zsh.sh**: Installs Zsh and Oh-My-Zsh.
8. **backup.sh**: Sets up automated backups using rsync.

## Setup Instructions

1. **Copy the Scripts to Your Server**
   Transfer all scripts from the `scripts` directory to your server.

2. **Make the Main Script Executable**
   Run the following command to make the main setup script executable:
   ```bash
   chmod +x setup_server.sh
   ```

3. **Run the Main Setup Script**
   Execute the main setup script:
   ```bash
   ./setup_server.sh
   ```
   Follow the on-screen prompts to complete the setup.

## Verification

After running the scripts, verify that each component is installed and configured correctly:

- **Docker**: Check the installation by running `docker version`.
- **Nginx**: Access your server's IP in a web browser to see the Nginx welcome page.
- **PostgreSQL**: Connect to PostgreSQL using `sudo -u postgres psql` and verify the connection.
- **SSH**: Test SSH connectivity and ensure key-based authentication is working.
- **Zsh**: Log in and run `echo $SHELL` to confirm Zsh is the default shell.

## Troubleshooting

If you encounter issues during the setup process, check the `logs/setup.log` file for any error messages or important information regarding the setup.

## Contributions

Feel free to contribute to this project by submitting issues or enhancements. Your feedback is valuable for improving the setup process.

## License

This project is licensed under the Creative Commons Attribution-NonCommercial 4.0 International License. See the LICENSE file for details.