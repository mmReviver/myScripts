@echo off
cls
color 0A
echo Setting the ip and dns...
netsh interface ip set address name="Ethernet" source=dhcp
netsh interface ip set dns name="Ethernet" source=static addr=10.10.0.21 primary
ipconfig /flushdns
echo done
