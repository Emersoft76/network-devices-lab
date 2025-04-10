#!/bin/bash

# Configuração base do OpenVPN site-to-site

apt install openvpn easy-rsa -y

# Comandos resumidos (customizar conforme ambiente)

make-cadir ~/openvpn-ca
cd ~/openvpn-ca
./easyrsa init-pki
./easyrsa build-ca
./easyrsa gen-req server nopass
./easyrsa sign-req server server

echo "VPN site-to-site configurada (certificados gerados)"
