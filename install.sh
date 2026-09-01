#!/data/data/com.termux/files/usr/bin/bash

set -e

echo "[+] Updating packages..."
pkg update -y
lpkg upgrade -y

echo "[+] Installing packages..."
pkg install -y \
    zsh \
    git \
    curl \
    nano \
    figlet \
    toilet \
    fastfetch \

echo "[+] Creating Termux configuration..."
mkdir -p ~/.termux

cat > ~/.termux/colors.properties <<'EOF'
background=#000000
foreground=#e0e0e0
cursor=#00ff00

color0=#000000
color1=#ff5555
color2=#50fa7b
color3=#f1fa8c
color4=#6272a4
color5=#bd93f9
color6=#8be9fd
color7=#f8f8f2
EOF

echo "[+] Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    RUNZSH=no CHSH=no KEEP_ZSHRC=yes \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
echo "[+] Installing zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
echo "[+] Creating Zsh configuration..."

cat > ~/.zshrc <<'EOF'
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
)

source "$ZSH/oh-my-zsh.sh"

clear
echo ""
figlet TERMUX
echo "Kali-inspired environment"
echo ""

PROMPT='%F{green}%n@termux%f:%F{blue}%~%f$ '
EOF
echo "[+] Creating BASH configuration..."
cat > ~/.zshrc <<'EOF'
zsh
EOF

echo "[+] Reloading Termux settings..."
termux-reload-settings 2>/dev/null || true

echo ""
echo "[+] Setup complete."
echo "[+] Start Zsh by running: zsh"
