#! /bin/bash

# Scripts for modify default configs of OSX

echo "Set desktop wallpaper";
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Library/Desktop Pictures/Mt. Fuji.jpg"';

echo "Show hidden files in the finder";
defaults write com.apple.finder AppleShowAllFiles YES

echo "Show extensions with filename";
defaults write NSGlobalDomain AppleShowAllExtensions -bool true;

echo "Disable the warning when changing file extensions";
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "Expand save panel by default";
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "set Dock tile size 36";
defaults write com.apple.dock tilesize -int 36;

echo "Dock set to auto-hide.";
defaults write com.apple.dock autohide -bool true;

echo "Removing dock show delay.";
defaults write com.apple.dock autohide-delay -float 0;
defaults write com.apple.dock autohide-time-modifier -float 0;

echo "Killing dock and finder so they'll restart.";
killall Dock 2>/dev/null;
killall Finder 2>/dev/null;

echo "save screenshots to ~/Desktop/screenshots/";
defaults write com.apple.screencapture location ~/Desktop/screenshots/

#echo "save screenshots in jpg format";
#defaults write com.apple.screencapture type jpg

echo "Restarting SystemUIServer";
killall SystemUIServer 2>/dev/null;
