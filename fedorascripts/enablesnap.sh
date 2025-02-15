#!/bin/bash

# From https://snapcraft.io/docs/installing-snap-on-manjaro-linux

# Install snapd
sudo pacman -S snapd

# Enable snap
sudo systemctl enable --now snapd.socket

# Enable classic snap
sudo ln -s /var/lib/snapd/snap /snap
