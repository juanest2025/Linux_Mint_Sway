#!/bin/bash
# =====================================================
# Script para instalar Zoom en Linux Mint desde repo
# =====================================================

set -e  # salir si hay error

echo "🔹 Actualizando sistema..."
sudo apt update && sudo apt upgrade -y

echo "🔹 Importando clave GPG de Zoom..."
wget -qO- https://zoom.us/linux/download/pubkey | sudo gpg --dearmor -o /usr/share/keyrings/zoom.gpg

echo "🔹 Agregando repo oficial de Zoom..."
echo "deb [signed-by=/usr/share/keyrings/zoom.gpg] https://zoom.us/linux/download stable main" | sudo tee /etc/apt/sources.list.d/zoom.list

echo "🔹 Actualizando lista de paquetes..."
sudo apt update

echo "🔹 Instalando Zoom..."
sudo apt install -y zoom

echo "✅ Zoom instalado correctamente y listo para actualizar con apt"
echo "Puedes ejecutar: sudo apt update && sudo apt upgrade para futuras actualizaciones"


