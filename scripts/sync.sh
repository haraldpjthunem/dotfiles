#!/bin/sh
# This is a script to perform incremental backup from the "Code" folder at /data to the corresponding folder at /mnt/harald.
# It not delete any files at the destination.

echo "---Running backup of Code---"
rsync -at /data/Code /mnt/harald
