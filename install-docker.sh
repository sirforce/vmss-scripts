#!/bin/bash

# Update the package database
sudo apt-get update

# Install necessary packages
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package database again
sudo apt-get update

# Install Docker
sudo apt-get install -y docker-ce

# Start Docker service
sudo systemctl start docker

# Enable Docker to start on boot
sudo systemctl enable docker

# Add current user to the docker group
sudo usermod -aG docker $USER
