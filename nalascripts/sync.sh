#!/bin/sh
# This is a script to perform incremental backup from the "Code" folder at /data to the corresponding folder at /mnt/FILESERVER/Harald.
# It does not delete any files at the destination.

echo "---Running backup of Code---"
echo "---Last backup " && date >> /home/harald/sync.log
rsync -at /media/DATA/Code /mnt/FILESERVER/Harald
