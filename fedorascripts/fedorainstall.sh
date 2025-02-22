#!/bin/bash
sudo dnf update

# -----------------------------
# Function to check whether an application is already installed, and if not, install it
# -----------------------------
function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo dnf install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
# install chromium          # Web browser
# install net-tools         # Net tools, such as ifconfig
# install xsel              # Manipulate the X selection (for terminal copy/paste)
install screenfetch       # Info on linux version
install thunar            # File manager and batch file renamer
install cmatrix           # Display from "The Matrix"
install mc                # Midnight Commander console-based file manager
install fzf               # Fuzzy file finder
install snapd             # Allow installation of snap packages

# Samba related, required for mounting external devices/drives
#install cifs-utils
#install smbclient
#install samba

# Multimedia
install audacity          # Cross-platform audio editor/converter
# install handbrake         # DVD ripper and video transcoder
install mkvtoolnix-gui    # GUI frontend for working with Matroska (MKV) files

# Image processing
install pinta             # Simple image editor
install gimp              # Advanced image editor

# Fun stuff
install figlet            # Creates large characters out of ordinary screen characters
install lolcat            # Colors text in a rainbow animation
