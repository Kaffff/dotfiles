# Do everything.
all: init link defaults brew zsh

# Set initial preference.
init:
	.bin/init.sh

# Link dotfiles.
link:
	.bin/link.sh

# Set macOS system preferences.
defaults:
	.bin/defaults.sh

# Install macOS applications.
brew:
	.bin/brew.sh

# Install zsh config.
zsh: 
	.bin/zsh.sh

# Update Dotfiles
update:
	.bin/update.sh