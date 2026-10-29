#!/bin/bash

# Define colors
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RESET="\033[0m"

# Function for colored echo
cecho() {
    echo -e "${YELLOW}[>>>]${RESET} ${GREEN}$1${RESET}"
}

cecho "Running apt update & upgrade"
sudo apt update && sudo apt upgrade -y

cecho "Installing apt packages"
sudo apt install -y \
  curl \
  wget \
  stow \
  vim \
  neofetch \
  tmux \
  mpv \
  ranger \
  zsh \
  build-essential \
  ripgrep \
  bat \
  fzf \
  ncdu \
  tldr \
  jq \
  exa \
  htop \
  git \
  wl-clipboard \
  unzip

cecho "Increasing inotify file watch limits"
sudo tee /etc/sysctl.d/60-inotify.conf > /dev/null <<EOF
fs.inotify.max_user_watches=524288
fs.inotify.max_user_instances=512
EOF
sudo sysctl --system

cecho "All tasks completed!"
