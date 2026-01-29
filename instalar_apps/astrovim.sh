#!/bin/bash

# requerimientos primero

sudo apt install git -y
sudo apt install curl -y
sudo apt install python3 -y
sudo apt-get install ripgrep -y 

# ahora el astrovim

git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
# remover link .git del repo
rm -rf ~/.config/nvim/.git
nvim

