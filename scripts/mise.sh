#!/usr/bin/env bash
set -euo pipefail

echo "Move mise config"

sudo mkdir -p "/etc/mise/"
sudo mv "$DOTFILES_DIR/.mise.toml" "/etc/mise/config.toml"

echo "Install mise"

sudo add-apt-repository -y ppa:jdxcode/mise
sudo apt update -y
sudo apt install -y mise

echo "Install tools via mise"

sudo mise install --system
