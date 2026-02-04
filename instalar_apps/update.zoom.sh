#!/usr/bin/env bash

set -e

echo "📥 Descargando Zoom para Linux Mint (64-bit)..."

URL="https://zoom.us/client/latest/zoom_amd64.deb"
FILE="zoom_amd64.deb"

# Descargar
wget -O "$FILE" "$URL"

echo "📦 Instalando Zoom..."

# Instalar
sudo dpkg -i "$FILE" || sudo apt -f install -y

# Limpiar
rm -f "$FILE"

echo "✅ Zoom actualizado correctamente."

