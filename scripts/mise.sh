#!/usr/bin/env bash
set -euo pipefail

echo "Install mise"

curl https://mise.run | sh
eval "$(~/.local/bin/mise activate bash)"

echo "Install tools via mise"

mise trust "$DOTFILES_DIR/.mise.toml"
mise install --cd "$DOTFILES_DIR"
