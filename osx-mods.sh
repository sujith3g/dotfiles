#! /bin/bash

# Scripts for modify default configs of OSX

## Show hidden files in the finder
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder
## save screenshots to ~/Desktop/screenshots/
defaults write com.apple.screencapture location ~/Desktop/screenshots/
killall SystemUIServer
