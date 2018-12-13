#!/bin/bash

###############################################################
########################## INSTALL DOCKER #####################
###############################################################

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

###############################################################
########################## INSTALL DOCKER COMPOSE #############
###############################################################

sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Make docker-compose executable
sudo chmod +x /usr/local/bin/docker-compose

###############################################################
########################## INSTALL Unzip ######################
###############################################################
sudo apt-get install unzip -y


###############################################################
########################## INSTALL .NET CORE###################
###############################################################

wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo add-apt-repository universe
sudo apt-get install apt-transport-https
sudo apt-get update -y
sudo apt-get install dotnet-sdk-2.2 -y

