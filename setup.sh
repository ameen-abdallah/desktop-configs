#!/bin/bash

sudo pacman -Syyu

sudo pacman -S git ansible curl

ansible-galaxy collection install kewlfft.aur

ansible-pull --ask-become-pass -u ameen--force -i arch-test1, -e "ansible_distribution=Archlinux" -U https://github.com/ameen-abdallah/desktop-configs -clean -d desktop-c>

echo "Ansible installation complete."