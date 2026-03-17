#!/usr/bin/env bash
set -euo pipefail

echo "Move mise config"

sudo mkdir -p "/etc/mise/"
sudo mv "$DOTFILES_DIR/.mise.toml" "/etc/mise/config.toml"

echo "Install mise"

sudo apt update -y && sudo apt install -y curl
sudo install -dm 755 /etc/apt/keyrings
curl -fSs https://mise.jdx.dev/gpg-key.pub | sudo tee /etc/apt/keyrings/mise-archive-keyring.asc 1> /dev/null
echo "deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.asc] https://mise.jdx.dev/deb stable main" | sudo tee /etc/apt/sources.list.d/mise.list
sudo apt update -y
sudo apt install -y mise

echo "Install tools via mise"

sudo mise install --system
