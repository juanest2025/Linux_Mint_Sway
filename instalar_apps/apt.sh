#!/bin/bash

sudo apt update && sudo apt upgrade -y

# entorno de sway
sudo apt install -y \
sway waybar kitty wofi wlogout swaylock swayidle
sudo apt install swaybg -y 


# sistema de utilidades
sudo apt install -y \
brightnessctl pipewire pipewire-pulse playerctl upower \
network-manager-gnome nm-connection-editor blueman

# herramientas wayland
sudo apt install -y \
grim slurp wl-clipboard gammastep

# notificaciones
sudo apt install -y \
mako-notifier cliphist udiskie

# terminal
sudo apt install -y \
ranger vim neovim fzf htop bat ripgrep

# audio video
sudo apt install -y \
pavucontrol vlc celluloid ffmpeg

# bluetooth
sudo apt install -y blueman

# bataria
sudo apt install -y \
tlp powertop

# compatibilidad X11
sudo apt install -y xwayland

# utilidades del sistemas
sudo apt install zsh -y 
sudo apt install zip -y 
sudo apt install ranger -y 
sudo apt install kitty -y 
sudo apt install gammastep -y 
sudo apt install x11-utils -y 
sudo apt install sway -y 
sudo apt install wofi -y 
sudo apt install waybar -y 
sudo apt install vim -y 
sudo apt install vlc -y 
sudo apt install wlogout -y 
sudo apt install swaylock -y 
sudo apt install swayidle -y 
sudo apt install wget -y 
sudo apt install curl -y 
sudo apt install git -y 





