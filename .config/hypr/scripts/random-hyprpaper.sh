#!/bin/bash

# Tentukan folder wallpaper
WALLDIR="$HOME/.config/hypr/wallpaper"

# Ambil satu file acak
SELECTED=$(find "$WALLDIR" -type f \( -iname '*.jpg' -o -iname '*.png' \) | shuf -n 1)

# Dapatkan nama monitor aktif
MONITOR=$(hyprctl monitors | grep "Monitor" | head -n1 | awk '{print $2}')

# Buat config hyprpaper secara dinamis
cat <<EOF > ~/.config/hypr/hyprpaper.conf
preload = $SELECTED
wallpaper = $MONITOR,$SELECTED
EOF

# Jalankan hyprpaper
hyprpaper

