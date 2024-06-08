#!/bin/bash

echo ">>>>>>>>>>> Installing Xcode Command Line Tools"
xcode-select --install

read -p "Continue (y/n)?" xcode_installed
case "$xcode_installed" in 
  y|Y )
    echo "Resuming installation" ;; 
  n|N )
    exit 1 ;;
  * )
    exit 1  ;;
esac

echo ">>>>>>>>>>> Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo ">>>>>>>>>>> Installing zsh & oh-my-zsh"
brew install zsh curl wget
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo ">>>>>>>>>>> Installing neovim, kitty and tmux"
brew install coreutilsi \
             neovim \
             tmux \ 
brew install --cask kitty

echo ">>>>>>>>>>> Restore .dotfiles"
make all

echo ">>>>>>>>>>> Installing Nerd Fonts"
brew tap homebrew/cask-fonts
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true

echo ">>>>>>>>>>> Installing asdf"
brew install asdf

echo ">>>>>>>>>>> Install Node.js via asdf"
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest:18
asdf install nodejs latest:20
asdf install nodejs latest:22
asdf global nodejs latest:20
corepack enable

echo ">>>>>>>>>>> Installing Go via asdf"
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf install golang latest

echo ">>>>>>>>>>> Installing other brews"
brew install awscli \
             terraform \
             gnupg \
             lazygit 
brew install --cask ngrok

