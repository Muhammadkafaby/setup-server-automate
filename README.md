# DevOps Setup

**`devops-setup`** is an automation project designed to streamline the setup of a DevOps environment on a server. It includes a series of scripts that automate the installation and configuration of essential software and services, making it easier to establish a robust and secure development and production environment.

### Features:
- **Comprehensive server setup**: Automates the installation of Docker, PostgreSQL, Nginx, and more.
- **Security hardening**: Configures SSH for secure access and sets up a firewall to protect the server.
- **User-friendly**: Scripts are designed to be easy to use, with prompts for necessary configurations.
- **Automated backups**: Ensures data safety with scheduled backups using rsync.
- **Modern shell experience**: Installs Zsh and Oh-My-Zsh for an enhanced command-line interface.

### Prerequisites:
- A freshly installed Ubuntu server (tested on Ubuntu 20.04+).
- Root or sudo access to the server.

### Instructions:
1. Clone the repository to your server.
2. Navigate to the project directory:
   ```bash
   cd devops-setup
   ```
3. Make the main setup script executable:
   ```bash
   chmod +x scripts/setup_server.sh
   ```
4. Run the main setup script:
   ```bash
   ./scripts/setup_server.sh
   ```
   Follow the on-screen prompts to complete the setup.

### Scripts Overview:
- **`setup_server.sh`**: The main script that orchestrates the entire setup process.
- **`install_docker.sh`**: Installs Docker and Docker Compose.
- **`configure_firewall.sh`**: Sets up UFW firewall rules.
- **`setup_nginx.sh`**: Installs and configures the Nginx web server.
- **`setup_postgresql.sh`**: Installs PostgreSQL and configures it securely.
- **`setup_ssh.sh`**: Configures SSH for secure access.
- **`setup_zsh.sh`**: Installs Zsh and Oh-My-Zsh.
- **`backup.sh`**: Sets up automated backups.

### Logging:
All setup logs are stored in the `logs/setup.log` file for review and troubleshooting.

### Documentation:
Refer to `docs/setup_guide.md` for detailed instructions on using the scripts and additional configuration options.

### Contributions:
Contributions are welcome! Please submit issues or enhancements to improve this project.

### License:
This project is licensed under the MIT License. See the LICENSE file for details.