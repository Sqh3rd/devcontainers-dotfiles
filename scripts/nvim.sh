#!/usr/bin/env bash
set -euo pipefail

echo "Install neovim"
curl -Lo /tmp/nvim.tar.gz \
  "https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz"
tar -C /usr/local -xzf /tmp/nvim.tar.gz --strip-components=1

if [ ! -d "~/.config/nvim" ]; then 
  echo "Cloning neovim config..."
  git clone git@github.com:Sqh3rd/nvim-config.git "/root/.config/nvim"
fi

echo "Installing neovim plugins..."
nvim --headless "+Lazy! sync" +qa || true
