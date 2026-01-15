#!/bin/bash
set -e

echo "▶ Instalando Google Chrome usando el repo oficial (APT)"
echo "------------------------------------------------------"

# 1. Instalar dependencias básicas
sudo apt update
sudo apt install -y wget gnupg ca-certificates

# 2. Importar clave GPG de Google
echo "▶ Importando clave GPG..."
wget -qO- https://dl.google.com/linux/linux_signing_key.pub \
| sudo gpg --dearmor -o /usr/share/keyrings/google-chrome.gpg

# 3. Añadir repositorio oficial
echo "▶ Añadiendo repositorio de Google Chrome..."
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main" \
| sudo tee /etc/apt/sources.list.d/google-chrome.list > /dev/null

# 4. Actualizar e instalar Chrome
echo "▶ Actualizando lista de paquetes..."
sudo apt update

echo "▶ Instalando Google Chrome Stable..."
sudo apt install -y google-chrome-stable

echo "------------------------------------------------------"
echo "✅ Google Chrome instalado correctamente"
echo "▶ Se actualizará automáticamente con apt upgrade"

