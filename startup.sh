# myScript.sh
#!/bin/bash

# Update package information, ensure that APT works with the https method, and that CA certificates are installed.
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add the GPG key for the official Docker repository to your system.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources.
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package database with the Docker packages from the newly added repo.
sudo apt-get update

# Install Docker.
sudo apt-get install -y docker-ce

# Start Docker service.
sudo systemctl start docker
sudo systemctl enable docker

# Verify Docker installation.
sudo docker --version
