#!/usr/bin/env bash
set -euo pipefail

PACKAGES=(
  mise

  ripgrep
  fzf
)

echo "Setup apt"
apt update -y
apt install -y git curl

echo "Setup apt repos"
install -dm 755 /etc/apt/keyrings
curl -fSs https://mise.jdx.dev/gpg-key.pub | tee /etc/apt/keyrings/mise-archive-keyring.asc 1> /dev/null
echo "deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.asc] https://mise.jdx.dev/deb stable main" | tee /etc/apt/sources.list.d/mise.list

echo "Update apt"
apt update -y

echo "Install Packages"
apt install -y "${PACKAGES[@]}"

