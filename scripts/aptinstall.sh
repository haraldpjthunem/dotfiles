#!/bin/bash
sudo apt update

# -----------------------------
# Function to check whether an application is already installed, and if not, install it
# -----------------------------
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
install curl              # Command line app to download files
install chromium-browser  # Web browser
install file              # file type guesser
install virtualbox        # Create and run virtual OS'es
install calibre           # Electronic book reader and converter
install kde-spectacle     # Screen capture utility
install qdirstat          # Graphical application to show where your disk space has gone
install dosbox            # x86 emulator to run old DOS programs
install libnotify-bin     # Used by several programs to send notifications
install tldr              # Short version of 'man' command
install neofetch          # Info on linux version
install htop              # Interactive process viewer
# install vim               # Text editor
# install tmux              # Terminal multiplexer
# install nmap              # Network mapper for network exploration or security auditing
# install openvpn           # Virtual private network daemon

# Samba related, required for mounting external devices/drives
install cifs-utils
install smbclient
install winbind
install samba

# Multimedia
install audacity          # Cross-platform audio editor/converter
install handbrake         # DVD ripper and video transcoder
install mkvtoolnix-gui    # GUI frontend for working with Matroska (MKV) files
install vlc               # Multimedia player and streamer

# Image processing
install pinta             # Simple image editor
install gimp              # Advanced image editor
install krita             # Advanced image editor
install gwenview          # Image viewer
# install optipng           # PNG optimizer (recompresses image files)
# install jpegoptim         # JPG optimizer (recompresses image files)

# Development
install code              # Visual Studio Code (advanced text editor)
install bcompare          # Beyond Compare for file/folder comparisons and synchronisation
install meld              # Graphical diff viewer and merge application

# Fun stuff
install figlet            # Creates large characters out of ordinary screen characters
install lolcat            # Colors text in a rainbow animation
