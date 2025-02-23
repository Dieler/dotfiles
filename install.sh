#!/bin/bash

set -eufo pipefail

echo ""
echo "🤚  This script will setup .dotfiles for you."
read -n 1 -r -s -p $'    Press any key to continue or Ctrl+C to abort...\n\n'

xcode-select --install || echo "XCode already installed"

# Install Homebrew
if which -s brew; then
  echo '🍺  Homewbrew is already installed'
else
  echo '🍺  Installing Homebrew' 
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  (
    echo
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'
  ) >>$HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install chezmoi
if which -s chezmoi; then
  echo '👊  chezmoi is already installed'
else
  echo '👊  Installing chezmoi'
  brew install chezmoi
fi

if [ -d "$HOME/.local/share/chezmoi/.git" ]; then
  echo "🚸  chezmoi already initialized"
  echo "    Reinitialize with: 'chezmoi init https://git.soma.com/adiel/dotfiles.git'"
else
  echo "🚀  Initialize dotfiles with:"
  echo "    chezmoi init https://git.soma.com/adiel/dotfiles.git"
fi

echo ""
echo "Done."
