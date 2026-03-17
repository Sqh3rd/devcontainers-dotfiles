#!/usr/bin/env bash
set -euo pipefail

echo "Move mise config"

sudo mkdir -p "/etc/mise/"
sudo mv "$DOTFILES_DIR/.mise.toml" "/etc/mise/config.toml"

echo "Install mise"

curl https://mise.run | sh
eval "$(~/.local/bin/mise activate bash)"

echo "Install tools via mise"

mise trust "$DOTFILES_DIR/.mise.toml"
mise install
