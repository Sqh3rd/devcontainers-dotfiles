#!/usr/bin/env bash
set -euo pipefail

PACKAGES=(
  git
  curl

  mise

  neovim
  ripgrep
  fzf
)

echo "Setup apt"
sudo apt update -y
sudo apt install software-properties-common

echo "Setup apt repos"
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo add-apt-repository -y ppa:jdxcode/mise

echo "Update apt"
sudo apt update -y

echo "Install Packages"
sudo apt install -y "${PACKAGES[@]}"

