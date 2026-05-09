#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$HOME/.dotfiles"

git clone https://github.com/owenlow/dotfiles.git "$DOTFILES_DIR"

find "$DOTFILES_DIR" -maxdepth 1 -name ".*" \
    ! -name "." \
    ! -name ".." \
    ! -name ".git" \
    -exec ln -sf {} "$HOME/" \;

echo "Installed dotfiles!"

