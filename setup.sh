#!/bin/bash

sudo pacman -Syyu

sudo pacman -S git ansible curl

ansible-galaxy collection install kewlfft.aur

ansible-pull --ask-become-pass -e "ansible_distribution=Archlinux" -U https://github.com/ameen-abdallah/desktop-configs --clean -d desktop-configs/

echo "Ansible installation complete."