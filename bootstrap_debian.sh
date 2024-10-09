#!/bin/bash

# Define colors
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RESET="\033[0m"

cd $HOME

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
  git

cecho "Installing i3 apt packages"
sudo apt install -y \
  i3 \
  i3lock \
  xautolock \
  feh \
  polybar

cecho "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cecho "Installing kitty"
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

cecho "Installing lazygit"
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

cecho "Installing tpm for tmux"
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

cecho "Install asdf"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1
echo ". $HOME/.asdf/asdf.sh" >> ~/.zshrc

cecho "Install nodejs via asdf"
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest:20
asdf global nodejs latest:20
corepack enable

cecho "Installing golang via asdf"
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf install golang latest
asdf global golang latest

cecho "Cloning .dotfiles from chunghakngor"
git clone https://github.com/chunghakngor/.dotfiles.git $HOME/.dotfiles

cecho "Generating symlinks from dotfiles"
cd $HOME/.dotfiles && make install

cecho "All tasks completed!"

