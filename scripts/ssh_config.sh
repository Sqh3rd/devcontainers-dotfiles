#!/usr/bin/env bash
set -euo pipefail

sudo mkdir -p /root/.ssh
sudo chmod 700 /root/.ssh

if ! grep -q "github.com" /root/.ssh/known_hosts 2>/dev/null; then
  sudo ssh-keyscan -t ed25519 github.com >> /root/.ssh/known_hosts
fi
