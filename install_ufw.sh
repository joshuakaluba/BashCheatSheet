#!/bin/bash

# This script is used to quicky install and configure ufw and enable/disable traffic through certain ports

# Install ufw
sudo apt-get install ufw;

# Allow Web ports
sudo ufw allow 80/tcp;
sudo ufw allow 443;

# Allow MySql port
sudo ufw allow 3306;


