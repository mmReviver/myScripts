@echo off
if exist "C:\Windows\System32\Drivers\etc\hosts_or" (
rename C:\Windows\System32\Drivers\etc\hosts hosts_ipv6
rename C:\Windows\System32\Drivers\etc\hosts_or hosts
echo "Hosts changed to Original one...") else (
rename C:\Windows\System32\Drivers\etc\hosts hosts_or
rename C:\Windows\System32\Drivers\etc\hosts_ipv6 hosts
echo "Hosts changed to Ipv6 one...")
pause
