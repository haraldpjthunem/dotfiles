#!/bin/bash

# Set up symbolic links
./symlink.sh

# Create samba directories
../makedirs.sh

# See our bash changes
source ~/.bashrc

# Install from repositories
./aptinstall.sh

# Install from other sources
./programs.sh

# Get all upgrades
sudo apt upgrade -y

# Fun hello
figlet "... and we're back!" | lolcat
