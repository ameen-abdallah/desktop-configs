#!/bin/bash

sudo pacman -Syyu

sudo pacman -S git ansible curl

ansible-galaxy collection install kewlfft.aur

curl -s https://github.com/ameen-abdallah/desktop-configs/setup.sh | bash

ansible-pull --ask-become-pass -U https://github.com/ameen-abdallah/desktop-configs

echo "Ansible installation complete."