#!/bin/bash

# To enable flatpak support
sudo apt update
sudo apt install -y flatpak plasma-discover-backend-flatpak kde-config-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

