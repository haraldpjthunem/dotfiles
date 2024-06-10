#!/bin/bash

# For ubuntu < 23.10
#sudo add-apt-repository ppa:audio-recorder/ppa

# For ubuntu >= 23.10
sudo add-apt-repository ppa:ubuntuhandbook1/audio-recorder

sudo nala update
sudo nala install -y audio-recorder
