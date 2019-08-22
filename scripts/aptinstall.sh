#!/bin/bash

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
# install git
install curl
install chromium-browser
install file
install virtualbox
install calibre
install kde-spectacle
install qdirstat
# install vim
# install tmux
# install htop
# install nmap
# install awscli
# install openvpn

# Samba related
install cifs-utils
install smbclient
install winbind
install samba

# Multimedia
install audacity
install handbrake
install mkvtoolnix-gui
install vlc

# Image processing
install gimp
install pinta
install krita
install gwenview
# install optipng
# install jpegoptim

# Development
install code
install bcompare
# install meld

# Fun stuff
install figlet
install lolcat