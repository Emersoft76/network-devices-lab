#!/bin/bash

# Simulação de VLANs com Linux Bridge
# Interface virtual para VLAN 10 e 20

ip link add link enp0s3 name enp0s3.10 type vlan id 10
ip link add link enp0s3 name enp0s3.20 type vlan id 20

ip addr add 192.168.10.1/24 dev enp0s3.10
ip addr add 192.168.20.1/24 dev enp0s3.20

ip link set enp0s3.10 up
ip link set enp0s3.20 up

echo "VLANs simuladas criadas com sucesso!"
