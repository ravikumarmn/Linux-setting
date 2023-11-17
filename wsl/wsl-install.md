* wsl installation video : https://youtu.be/LViy7x2Gpc4
* changes in the `windows features`
	1. turn on virtual machine platform
	2. windows subsystem Linux
	3. then it will prompt to restart
* switch to wsl 2
	```bash
	wsl --set-default-version 2
	```
* update wsl
	```bash
	wsl --update
	```

* online wsl distribution and install ubuntu
	```bash
	wsl --list --online
	wsl --install -d Ubuntu
	```
* list running wsls
	```bash
	wsl --list --verbose
	```

* shutdown specific
	```bash
	wsl -t Ubuntu
	```
* If you have multiple distribution, you want to start `Ubuntu`
	```bash
	wsl --distribution Ubuntu
	```

## installing cuda
```bash
sudo apt update
```
* check for gcc and install if not
	```bash
	gcc --version
	sudo apt install gcc --fix-missing
	```

* if you get error(dpkg  error), after `sudo apt install gcc --fix-missing`
	`sudo apt --fix-broken install` or `sudo dpkg --configure -a`

* check the nvidia-smi and get the cuda version, based on that install toolkit.
	ex: cuda 12.1, search CUDA Toolkit 12.1 Downloads
	install the above found set of commands

* after the installation toolkit, search for the nvidia cuda installation guidelines 
	- under the `Post-installation Actions`, follow the guidelines
	- add the cuda path to `.bashrc`
	```bash
	cd ~
	nano .bashrc
	source ~/.bashrc #run bashrc and update changes
	```
* need to install cuda tool kit
	```bash
	sudo apt install nvidia-cuda-toolkit
	```

* use a cuda code to test the installation
create file `test.cu` and append below code
```c
#include <stdio.h>
__global__ void hello() {
 printf("Hello, world from GPU!\n");
}
int main(){
printf("Hello, world from cpu!\n");
hello<<<1,1>>>();
cudaDeviceSynchronize();
return(0);
}
```

then run the below command to test
```bash
nvcc test.cu -o test
./test #output should be hello ..
```
* change the settings in the nvidia control panel setting
	- under `Desktop` click on `Enable Developer Setting`
	- in the down feature list, In `Developer`, all access to the performance counters to all users






### nodejs 16 on ubuntu 14

before this you can install `curl`

```bash
cd ~
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh

sudo bash /tmp/nodesource_setup.sh

sudo apt install nodejs
```

if you get conflicts, remove them
```
sudo apt remove libnode-dev
sudo apt remove libnode72

```
