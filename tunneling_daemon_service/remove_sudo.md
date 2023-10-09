if you don't want to sudo then you need to edit `sudoers` file
but you need to take a backup before start editting: Imp
```bash
sudo cp /etc/sudoers /etc/sudoers.bak
```

use `sudo visudo` to edit the sudoer file
at the bottom of the file data
append this line 
```bash
sigmoid ALL=(ALL) NOPASSWD: /bin/systemctl
```
the above cod will not ask sudo to /bin/systemctl command

