#!/bin/bash

# This script is used to install and run the transmission docker image

# Port for transmission
PORT=9091

# Create docker image
docker create --name=transmission \
--restart=always \
-v /home/docker/transmission/config:/config \
-v /home/docker/transmission/downloads:/downloads \
-v /home/docker/transmission/watch:/watch \
-e PGID=1001 -e PUID=1001 \
-e TZ=Europe/London \
-p $PORT:9091 -p 51413:51413 \
-p 51413:51413/udp \
linuxserver/transmission

# Start transmission
docker start transmission

# curl -s https://raw.githubusercontent.com/joshuakaluba/BashCheatSheet/master/install_transmission.sh | bash -s
