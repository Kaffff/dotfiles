#!/bin/bash

rm -f Brewfile
brew bundle dump

cp ~/.zshrc .
cp ~/.zshenv .
cp ~/.zprofile .
cp ~/.zpreztorc .
# cp -f Library/Application\ Support/Code/User/settings.json .
