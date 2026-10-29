#!/bin/bash

# Define colors
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RESET="\033[0m"

# Function for colored echo
cecho() {
    echo -e "${YELLOW}[>>>]${RESET} ${GREEN}$1${RESET}"
}

FONTS_URL="https://cdn.clickqlack.com/assets/fonts"

# macOS ignores font hinting, so use the unhinted build there
if [ "$(uname)" = "Darwin" ]; then
  FONTS_ZIP="MonoNerdUnhinted.zip"
  FONTS_DIR="$HOME/Library/Fonts"
else
  FONTS_ZIP="MonoNerd.zip"
  FONTS_DIR="$HOME/.local/share/fonts"
fi

TMP_DIR=$(mktemp -d)
trap 'rm -rf "$TMP_DIR"' EXIT

cecho "Downloading $FONTS_ZIP"
curl -fLo "$TMP_DIR/$FONTS_ZIP" "$FONTS_URL/$FONTS_ZIP" || exit 1

cecho "Installing fonts to $FONTS_DIR"
mkdir -p "$FONTS_DIR"
unzip -o -q "$TMP_DIR/$FONTS_ZIP" '*.ttf' -d "$FONTS_DIR" || exit 1

if command -v fc-cache > /dev/null; then
  cecho "Refreshing font cache"
  fc-cache -f "$FONTS_DIR"
fi

cecho "All tasks completed!"
