### Install nvidia run commands in terminal

before going to install, You will have to download a nvidia drivers which will be in the .run extention from nvidia documentation.

    https://docs.nvidia.com/datacenter/tesla/tesla-installation-notes/index.html
   

after downloading reboot the system, once the system is going to start, press "Esc" key. select advanced setting option and root prompt to get the root terminal.

if you have downloaded in the ~/Downloads directory run this command\
`$ bash install_nvidia.sh`

After successfull running the above command, reboot the system and open terminal and run `nvidia-smi` to verify the installation.
