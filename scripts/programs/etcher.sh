#!/bin/bash

# BalenaEtcher

# Add Etcher debian repository
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list

# Trust Bintray.com's GPG key
sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 379CE192D401AB61

# Update and install
sudo apt-get update
sudo apt-get install balena-etcher-electron

# Uninstall:
# sudo apt-get remove balena-etcher-electron
# sudo rm /etc/apt/sources.list.d/balena-etcher.list
# sudo apt-get update
