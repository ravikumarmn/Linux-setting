Outlines the steps you used to set up CUDA 12.6 in WSL, along with explanations for why each command is helpful.

---

# Setting Up CUDA 12.6 in WSL

This guide describes how to correctly set up CUDA 12.6 in WSL (Windows Subsystem for Linux), clean up conflicting versions, and verify that everything works as expected.

---

## Step-by-Step Instructions

### 1. Remove Existing CUDA Installation
```bash
sudo apt purge cuda
```
- **Why?**: This command removes any previously installed versions of CUDA to prevent conflicts.

### 2. Update the Package List
```bash
sudo apt update
```
- **Why?**: Ensures that your package manager is aware of the latest available packages.

### 3. Install CUDA 12.6
```bash
sudo apt install -y cuda-12-6
```
- **Why?**: Installs CUDA Toolkit version 12.6, which includes the compiler (`nvcc`), runtime, and libraries for GPU development.

### 4. Restart WSL
```bash
wsl --shutdown
wsl
```
- **Why?**: Restarts WSL to ensure that all changes take effect and that the newly installed CUDA is recognized.

### 5. Verify GPU Accessibility
```bash
nvidia-smi
```
- **Why?**: Confirms that the NVIDIA GPU is recognized and accessible within WSL.

### 6. Update `PATH` and `LD_LIBRARY_PATH`
```bash
export PATH=/usr/local/cuda-12.6/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-12.6/lib64:$LD_LIBRARY_PATH
```
- **Why?**: Temporarily updates the system's environment variables to point to CUDA 12.6, ensuring that its binaries and libraries are used.

### 7. Persist the Environment Variables
```bash
echo 'export PATH=/usr/local/cuda-12.6/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-12.6/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc
```
- **Why?**: Saves the environment variable changes so that they are automatically applied in future sessions.

### 8. Update Default CUDA Symlink
```bash
sudo rm -rf /usr/local/cuda
sudo ln -s /usr/local/cuda-12.6 /usr/local/cuda
```
- **Why?**: Updates the `/usr/local/cuda` symlink to point to CUDA 12.6, making it the default CUDA version.

### 9. Verify the Symlink
```bash
ls -l /usr/local/cuda
```
- **Why?**: Confirms that the symlink points to the correct version (`/usr/local/cuda-12.6`).

### 10. Test CUDA Functionality
Create a simple CUDA test program (`test.cu`):
```cpp
#include <iostream>
__global__ void hello() {
    printf("Hello from CUDA!\n");
}
int main() {
    hello<<<1, 1>>>();
    cudaDeviceSynchronize();
    return 0;
}
```
Compile and run:
```bash
nvcc test.cu -o test
./test
```
- **Why?**: Verifies that CUDA is working correctly by compiling and running a simple CUDA program.

### 11. Clean Up Old Versions
```bash
sudo rm -rf /usr/local/cuda-12.1
```
- **Why?**: Removes the old CUDA version (12.1) to avoid conflicts and save disk space.

---

## Summary of Environment Variables
Add the following to your `~/.bashrc` for a persistent setup:
```bash
export PATH=/usr/local/cuda-12.6/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-12.6/lib64:$LD_LIBRARY_PATH
```

---

### Notes
- **Restart WSL**: After making significant changes, always restart WSL to ensure they take effect.
- **Default Symlink**: The `/usr/local/cuda` symlink is crucial for tools that rely on the default CUDA path. Always ensure it points to the correct version.

---

This README should help you quickly reference the steps and understand why each command is important for configuring CUDA in WSL. Let me know if you need further clarification or updates!
