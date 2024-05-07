#!/bin/bash

# To enable flatpak support
sudo nala update
sudo nala install -y flatpak plasma-discover-backend-flatpak kde-config-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
