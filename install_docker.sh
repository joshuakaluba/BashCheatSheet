#!/bin/bash

# This script is used to quickly install docker on ubuntu 16.04+

# Update
sudo apt update -y

# Install supporting applications
sudo apt install \
apt-transport-https \
ca-certificates \
curl \ 
software-properties-common -y; 

# Download docker packages
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 

# Add docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# Update
sudo apt update -y

# Install Docker
sudo apt install docker-ce -y

# Elevate docker user permissions
sudo usermod -aG docker ${USER}

# Download docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Make docker-compose executable
sudo chmod +x /usr/local/bin/docker-compose

# Shortcut to get and run this script
# curl -s https://raw.githubusercontent.com/joshuakaluba/BashCheatSheet/master/install_docker.sh | bash -s
# curl -s https://raw.githubusercontent.com/joshuakaluba/BashCheatSheet/master/install_transmission.sh | bash -s
