## Better to study the speed of the block-size and counts 
- recommended size : less than half of the ram of the system
- http://blog.tdg5.com/tuning-dd-block-size/, In this blog you can see code and analysis of bs and counts to create better swap memory
- aws step guid to create a swap memory, https://aws.amazon.com/premiumsupport/knowledge-center/ec2-memory-swap-file/


## steps
1. run this command
    ```
    ./dd_obs_test.sh /dev/null
    ```
    this will give you memory and speed for different block-size

2. after the above step, follow aws steps\
or\
run the below file and mention the bs and count correctly

    Last line in `change_swap.sh` can be done manually by editing the file(`/etc/fstab`)
    ```
    sudo vi /etc/fstab
    /swapfile swap swap defaults 0 0
    ```

## note:
- if your swap is busy
```
sudo swapoff -a
```

