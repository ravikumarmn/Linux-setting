check the `diskutil list` to check mounted disk

remember the path (ex: /dev/disk4)

step 1: `diskutil list`
  if the disk usage path is /dev/disk4
  
step 2: `diskutil unmountDisk /dev/disk4`

step 3: `sudo dd if=/Users/shivanandn/Developer/torrs/Windows\ 11\ FINAL\ 22H2\ -\ untouched\ ISO\ +\ Activator\ \[TheWindowsForum.com\]/en-us_windows_11_business_editions_version_22h2_updated_sep_2022_x64_dvd_840da535.iso of=/dev/disk4 bs=1m`
step 4: `diskutil eject /dev/disk4`

