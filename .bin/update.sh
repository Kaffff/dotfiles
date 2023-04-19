#!/bin/bash

rm -f Brewfile
brew bundle dump

cp ~/.zshrc .
cp ~/.zshenv .
cp ~/.zprofile .
