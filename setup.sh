#!/bin/bash

echo "🔗 Membuat symlink konfigurasi dari ~/.dotfiles ke sistem..."

# ========== FILE ==========
echo "→ .bashrc"
ln -sf ~/.dotfiles/.bashrc ~/.bashrc

# ========== FOLDER CONFIG ==========
CONFIGS=("hypr" "lf" "nvim" "rofi" "waybar")

for item in "${CONFIGS[@]}"; do
    echo "→ ~/.config/$item"
    ln -sf ~/.dotfiles/.config/$item ~/.config/$item
done

# ========== FILE CONFIG ==========
# (Jika kamu pakai mimeapps.list secara langsung)
echo "→ ~/.config/mimeapps.list"
ln -sf ~/.dotfiles/.config/mimeapps.list ~/.config/mimeapps.list

echo "✅ Selesai membuat symlink!"

