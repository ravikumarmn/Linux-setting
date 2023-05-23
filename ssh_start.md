`sudo apt-get install openssh-server`

Enable the ssh service
```
sudo systemctl enable ssh
## OR enable and start the ssh service immediately ##
sudo systemctl enable ssh --now
```

Start the ssh service
`sudo systemctl start ssh`
