#!/data/data/com.termux/files/usr/bin/bash

set -e
echo "[+] Removing installed packages..."

pkg uninstall -y \
    zsh \
    git \
    nano \
    figlet \
    toilet \
    fastfetch
    
echo "[+] Removing Oh My Zsh..."
rm -rf "$HOME/.oh-my-zsh"

echo "[+] Removing Zsh plugins..."
rm -rf "$HOME/.zsh/zsh-syntax-highlighting"
rm -rf "$HOME/.zsh/zsh-autosuggestions"

# Remove the .zsh directory if it is now empty
rmdir "$HOME/.zsh" 2>/dev/null || true

echo "[+] Removing custom Zsh configuration..."

rm -f "$HOME/.zshrc"
echo "[+] Removing custom Zsh configuration..."

rm -f "$HOME/.bashrc"

echo "[+] Removing Termux color configuration..."
rm -f "$HOME/.termux/colors.properties"

echo "[+] Reloading Termux settings..."
termux-reload-settings 2>/dev/null || true

echo ""
echo "[+] Uninstallation complete."
echo "[!] Packages such as zsh, git, nano, figlet, toilet,"
echo "[!] and fastfetch were  removed."
