#!/bin/bash

# List of environment names to delete
envs=("dev" "dev2" "finetune" "forecast" "gcp" "hf" "openlabel" "pcb" "rag")

# Loop through each environment and delete it
for env in "${envs[@]}"; do
    echo "Deleting Conda environment: $env"
    conda remove --name "$env" --all -y
done

# Clean up Conda caches and other files
echo "Cleaning up Conda caches and temporary files..."
conda clean --all -y

echo "All specified environments have been deleted and Conda cache has been cleaned."

# Save and execute the script to delete the specified environments.
# chmod +x delete_envs.sh
# ./delete_envs.sh
