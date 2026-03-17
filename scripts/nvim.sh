#!/usr/bin/env bash
set -euo pipefail

if [ ! -d "~/.config/nvim" ]; then 
  echo "Cloning neovim config..."
  sudo git clone git@github.com:Sqh3rd/nvim-config.git "/root/.config/nvim"
fi

echo "Installing neovim plugins..."
sudo nvim --headless "+Lazy! sync" +qa || true
