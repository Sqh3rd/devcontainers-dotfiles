#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting dotfiles install..."

source "$DOTFILES_DIR/scripts/ssh_config.sh"
source "$DOTFILES_DIR/scripts/tools.sh"
source "$DOTFILES_DIR/scripts/nvim.sh"

echo "Finished dotfiles install"
