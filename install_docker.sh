#!/bin/bash

# This script is used to quickly install docker on ubuntu 16.04+

# Update
sudo apt update -y

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Elevate docker user permissions
sudo usermod -aG docker ${USER}

# curl -s https://raw.githubusercontent.com/joshuakaluba/BashCheatSheet/master/install_docker.sh | bash -s
# curl -s https://raw.githubusercontent.com/joshuakaluba/BashCheatSheet/master/install_transmission.sh | bash -s
