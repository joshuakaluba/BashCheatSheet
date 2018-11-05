#!/bin/bash

# This script is used to install docker on the Raspberry Pi 3b+
# This script is from https://medium.freecodecamp.org/the-easy-way-to-set-up-docker-on-a-raspberry-pi-7d24ced073ef

#download and run installer
curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh

#add docker user
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker