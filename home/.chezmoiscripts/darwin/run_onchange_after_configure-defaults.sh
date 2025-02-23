#!/bin/bash

set -eufo pipefail

# https://github.com/mathiasbynens/dotfiles/blob/main/.macos

###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################

# Enable standard function keys (F1, F2, F3, ...)
defaults write "Apple Global Domain" "com.apple.keyboard.fnState" "1"

defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode TwoButton

