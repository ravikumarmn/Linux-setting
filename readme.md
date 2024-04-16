## ubuntu version
```bash
lsb_release -a
```
```bash
apt --fix-broken install
```

### nvidia-installation
- install and uninstall nvidia drivers in linux machine


### Compact virtual machine Linux

https://stephenreescarter.net/how-to-shrink-a-wsl2-virtual-disk/

```
wsl.exe --list --verbose
wsl.exe --terminate Ubuntu
diskpart
```
then
```
select vdisk file="C:\Users\sigmoid\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu_79rhkp1fndgsc\LocalState\ext4.vhdx"
compact vdisk
```
path used - "C:\Users\sigmoid\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu_79rhkp1fndgsc\LocalState\ext4.vhdx"
