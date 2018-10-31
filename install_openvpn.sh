#!/bin/bash

# This script is based on https://github.com/kylemanna/docker-openvpn

# This script is used to quickly instal OpenVpn Server

# IP Address or Domain name
IPADDRESS="www.example.com"

# Name of OpenVPN client for certificate to generate
CLIENTNAME="JoshuaDevPC"

# Name of docker volume to create
OVPN_DATA="ovpn-data-volume"

# External Port for OpenVpn
PORT=1194

# Create volume 
docker volume create --name $OVPN_DATA

docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_genconfig -u udp://$IPADDRESS
docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn ovpn_initpki
docker run -v $OVPN_DATA:/etc/openvpn -d -p $PORT:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn 
docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn easyrsa build-client-full $CLIENTNAME nopass
docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_getclient $CLIENTNAME > $CLIENTNAME.ovpn

# Execute the following to start the OpenVPN server
docker run -v $OVPN_DATA:/etc/openvpn -d --restart=always  -p $PORT:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn