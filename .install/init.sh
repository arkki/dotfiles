#!/bin/bash

# Create dirs if they don't exist
printf 'Creating dirs...'
mkdir -p ~/.config/fish
mkdir -p ~/.ssh/ids
chmod 700 ~/.ssh

touch ~/.gitconfig
printf ' done!\n'

# Creating dotfile symlinks to $HOME
printf 'Creating all symlinks to %s with stow...' $HOME
~/.dotfiles/.install/stow_all.sh

printf ' done!\n\n'

# GIT
printf 'Setting up git variables...\n'
printf 'Enter your git user.name: '
read -e GITUSERNAME

printf 'Enter your git user.email: '
read -e GITUSEREMAIL

git config --global user.name "$GITUSERNAME"
git config --global user.email "$GITUSEREMAIL"

printf 'Done!\n\n'

# Fisher plugins
printf 'Installing fisher with plugins...\n'
fish -c fisher

# Install tmux-plugin-manager
printf 'Installing tmux plugin-manager...\n'
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Oh-My-Fish w/ lambda theme
printf 'Installing Oh-My-Fish with plugins..\n'
mkdir -p ~/.temp
git clone https://github.com/oh-my-fish/oh-my-fish.git ~/.temp/oh-my-fish
~/.temp/oh-my-fish/bin/install --offline
