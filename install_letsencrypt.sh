#!/bin/bash

# This scipt is used to quicly install LetsEncrypt

# Add certbot repository
sudo add-apt-repository ppa:certbot/certbot

# Update repositories
sudo apt-get update -y; 

# Install Certbot client
sudo apt-get install python-certbot-apache