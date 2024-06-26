#!/bin/bash

# Sublime Text programmer's editor

# Add the GPG key of the repository
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

# Add the repository
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# Update then install Sublime Text
sudo apt update && sudo apt install -y sublime-text
