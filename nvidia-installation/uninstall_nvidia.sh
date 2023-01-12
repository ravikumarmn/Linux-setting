#To uninstall a nvidia from ubunutu 20.14 follw the below commands:
sudo su
apt-get purge nvidia*

apt-get autoremove

apt-get autoclean

rm -rf /usr/local/cuda*
     
echo 'successfully deleted nvidia'



