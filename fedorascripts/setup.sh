#!/bin/bash

# Set up symbolic links to this directory
./symlink.sh

# Create samba directories
../makedirs.sh

# See our bash changes
source ~/.bashrc

# Install from repositories
./fedorainstall.sh

# Install from other sources
./programs.sh

# Fun hello
figlet "... and we're back!" | lolcat
