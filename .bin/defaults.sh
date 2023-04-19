#!/bin/bash

# キーの入力スピードを速くする
defaults write -g InitialKeyRepeat -int 11 
defaults write -g KeyRepeat -int 1 

# Dockの設定
defaults write com.apple.dock tilesize -int 27
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock orientation -string "left"

# トラックパッドの設定
defaults write -g com.apple.trackpad.forceClick -bool true
defaults write -g com.apple.trackpad.scaling 3
defaults write com.apple.AppleMultitouchTrackpad Clicking 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture 0


