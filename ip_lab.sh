#!/bin/bash 
ifconfig eth0 10.214.9.209 netmask 255.255.255.0
route add default gw 10.214.9.1
echo "Done.."
