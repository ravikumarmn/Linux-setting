# after installing open-ssh server and starting daemon
check wether you can ssh using windows power shell to wsl.

```bash

ifconfig
```
from the above get the ip address of wsl 
```c
netsh interface portproxy add v4tov4 `
listenport=2222 `
listenaddress=0.0.0.0 `
connectport=22 `
connectaddress=172.31.119.189
```
keeping `listenport` other 22 is good thing if you are using ssh from windows also. otherwise default it to 22.

`connectaddress` - get the wsl ip address


# check the portproxy 

```
netsh interface portproxy show all
```

# allow port from firewall

Either you can follow windows ui screen `Windows Defender Firewall with Advanced Security` or powershell command


```
New-NetFirewallRule -DisplayName "Allow WSL ssh" -Direction Inbound -Protocol TCP -LocalPort 22 -Action Allow
```