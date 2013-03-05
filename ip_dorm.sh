#!/bin/bash 
ifconfig eth0 down
ifconfig eth0 hw ether 00:5A:B6:92:DA:AC
ifconfig eth0 up
ifconfig eth0 222.205.124.7 netmask 255.255.255.0
route add default gw 222.205.124.1
echo "Done.."
