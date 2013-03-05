@echo off
cls
color 0A
echo Setting the ip and dns...
netsh interface ip set address name="Ethernet" source=static addr=222.205.124.7 mask=255.255.255.0 gateway=222.205.124.1 gwmetric=1
netsh interface ip set dns name="Ethernet" source=static addr=10.10.0.21 primary
echo done
