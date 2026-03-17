#!/usr/bin/env bash
set -euo pipefail

PACKAGES=(
  mise

  ripgrep
  fzf
)

echo "Setup apt"
sudo apt update -y
sudo apt install -y git curl

echo "Setup apt repos"
sudo install -dm 755 /etc/apt/keyrings
curl -fSs https://mise.jdx.dev/gpg-key.pub | sudo tee /etc/apt/keyrings/mise-archive-keyring.asc 1> /dev/null
echo "deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.asc] https://mise.jdx.dev/deb stable main" | sudo tee /etc/apt/sources.list.d/mise.list

echo "Update apt"
sudo apt update -y

echo "Install Packages"
sudo apt install -y "${PACKAGES[@]}"

