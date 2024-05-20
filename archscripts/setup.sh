#!/bin/bash

# Set up symbolic links
../symlink.sh

# Create samba directories
../makedirs.sh

# See our bash changes
source ~/.bashrc

# Install from repositories
./archinstall.sh

# Install from other sources
# ./programs.sh

# Get all upgrades
# sudo nala upgrade -y

# Fun hello
figlet "... and we're back!" | lolcat
