
read -p 'type block-size :' BLOCK_SIZE
read -p 'type counts :' COUNTS
echo 'BLOCK_SIZE is' $BLOCK_SIZE 'and COUNTS ARE' $COUNTS
sudo dd if=/dev/zero of=/swapfile bs=$BLOCK_SIZE count=$COUNTS
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon -s

sudo echo '/swapfile swap swap defaults 0 0' >> /etc/fstab