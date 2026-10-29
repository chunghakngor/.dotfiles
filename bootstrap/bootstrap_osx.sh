#!/bin/bash

# Define colors
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RESET="\033[0m"

# Function for colored echo
cecho() {
    echo -e "${YELLOW}[>>>]${RESET} ${GREEN}$1${RESET}"
}

cecho "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Load brew into this shell (Apple Silicon: /opt/homebrew, Intel: /usr/local)
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  eval "$(/usr/local/bin/brew shellenv)"
fi

cecho "Installing brew packages"
brew install \
  curl \
  wget \
  stow \
  vim \
  fastfetch \
  tmux \
  mpv \
  ranger \
  zsh \
  coreutils \
  ripgrep \
  bat \
  fzf \
  ncdu \
  tlrc \
  jq \
  eza \
  htop \
  git

cecho "All tasks completed!"
