# Create Volume and Attach to Instance (Linux)
# Login in to Instance 
# Create partition, format and mount the volume
# Create test.txt in /mnt/data
# On AWS Console, expand the volume from 8 GiB to 16 GiB
# On Instance, extend volume using (growpart) and resize2fs
# Verify test.txt in /mnt/data


# ==============================================================================
# List all partitions and mount points
lsblk   (LiSt BLock devices)

# Check disk space
df -h   (disk free -human readable)

# Create partition on the new volume
sudo fdisk /dev/nvme1n1

n (new partition)
p (primary)
1 (partition number 1)
<enter> (default first sector)
<enter> (default last sector)
w (write changes and exit)

# Verify the partition is created
lsblk

# Create mount point
sudo mkdir /data

# Format the partition
sudo mkfs -t xfs /dev/nvme1n1p1

# Mount the partition
sudo mount /dev/nvme1n1p1 /data


# ==============================================================================
# Create test.txt in /data
sudo bash -c 'echo "This is a test file" > /data/test.txt' (-c to run command as superuser)


# ==============================================================================
# Make volume auto mount after restartUU
sudo blkid  (List block device attributes)
sudo lsblk -o +UUID (List block devices with UUID)

# Modify /etc/fstab file
sudo vi /etc/fstab

# Test auto mount
df -h
sudo umount /data

# Re-mount all file systems mentioned in /etc/fstab
sudo mount -a
df -h


# ==============================================================================

# Expand volume after increasing size in AWS Console
# Verify the partition size
lsblk

# Grow volume after expanding in AWS Console
sudo growpart /dev/nvme1n1 1

# Resize the file system
sudo xfs_growfs -d /data

#
lsblk
df -h

# Verify test.txt in /data
cat /data/test.txt