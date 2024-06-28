#!/bin/bash

#https://stackoverflow.com/questions/77273025/how-to-get-docker-on-azure-virtual-machine-scaleset-build-agents

# Update the package database
sudo apt-get update

# Install necessary packages
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-get -y update

sudo apt install -y docker.io

sudo systemctl start docker

sudo chmod 777 /var/run/docker.sock

# Update the package database again
sudo apt-get update

