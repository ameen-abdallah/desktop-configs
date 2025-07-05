#!/bin/bash

sudo pacman -Syyu

sudo pacman -S git ansible curl

ansible-galaxy collection install kewlfft.aur

ansible-pull --ask-become-pass -U https://github.com/ameen-abdallah/desktop-configs

echo "Ansible installation complete."