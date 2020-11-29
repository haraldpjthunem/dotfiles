#!/bin/sh
# This is a script to perform incremental backup from the "Code" folder at /data to the corresponding folder at /mnt/harald.
# It does not delete any files at the destination.

echo "---Running backup of Code---"
rsync -at /media/data/Code /mnt/FILESERVER/harald
