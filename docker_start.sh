#!/bin/bash

# Update package information and install Docker
sudo apt-get update
sudo apt-get install -y docker.io

# Enable Docker service to start on boot
sudo systemctl enable docker

# Start Docker service
sudo systemctl start docker

# Verify Docker is running
sudo systemctl status docker

sudo usermod -aG docker brferre

