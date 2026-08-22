#! /usr/bin/env bash

set -e 

echo "Creating Directories"
mkdir -p "$HOME/dotfiles"

DOTFILES="$HOME/dotfiles/"
SRC="$HOME/.local/src/"


#Bash Files
ln -sfn "$DOTFILES/mainDotFiles/bashrc" "$HOME/.bashrc"
ln -sfn "$DOTFILES/mainDotFiles/bash_profile" "$HOME/.bash_profile"
ln -sfn "$DOTFILES/mainDotFiles/xinitrc" "$HOME/.xinitrc"

#Config Files
ln -sfn "$DOTFILES/nvim/" "$HOME/.config/nvim"

#Suckless/Desktop Environment
ln -sfn "$DOTFILES/suckless/dmenu/" "$HOME/.local/src/dmenu"
ln -sfn "$DOTFILES/suckless/dwm/" "$HOME/.local/src/dwm"
ln -sfn "$DOTFILES/suckless/st/" "$HOME/.local/src/st"

