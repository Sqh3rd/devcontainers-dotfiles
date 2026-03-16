#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting dotfiles install..."

source "$DOTFILES_DIR/scripts/mise.sh"
source "$DOTFILES_DIR/scripts/nvim.sh"
