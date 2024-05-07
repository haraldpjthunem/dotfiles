#!/bin/bash

# OnlyOffice MS Office replacement

# Add the GPG key of the repository
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5

# Add the repository
echo 'deb https://download.onlyoffice.com/repo/debian squeeze main' | sudo tee -a /etc/apt/sources.list.d/onlyoffice.list

# Update then install vscodium
sudo apt update && sudo apt install -y onlyoffice-desktopeditors
