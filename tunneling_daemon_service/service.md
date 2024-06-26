## write the service script
```bash
sudo nano /etc/systemd/system/my_service.service
```
this file should have `ExecStart` pointing to file to execute when start the service, it can be anykind of file
examples
```bash
ExecStart=/usr/bin/python3 /home/user/myservice.py
```
or
```bash
ExecStart=/bin/bash /home/user/myservice.sh
```
## `code` file needs execute permission
```bash
sudo chmod u+x /home/sigmoid/code
```

## create .sh file and start the service
currently created this file at `/`
```bash
sudo nano start_tunnel.sh 
```
after creating a service unit file you need to reload the systemd daemon to apply the changes
```bash
sudo systemctl daemon-reload
```
Enable and start the service
```bash
sudo systemctl enable --now my_service
```
verify the service status
```bash
sudo systemctl status my_service
```


## Debugging the service, view service logs
```bash
sudo journalctl -u my_service
```

Enable verbose logging directly in the service file
```bash
ExecStart=/user/bin/python3 /home/user/myservice.py >> /var/log/my_service.log 2>&1
```

## Determine service is running
```bash
sudo systemctl is-active my_service
```

## systemctl was not installed
```
sudo apt-get update
sudo apt-get install dbus-user-session
systemctl --user enable dbus --now
```

## tunnel service start can be added to `start_tunnel.sh`
```bash
tunnel service install 
```
