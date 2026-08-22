#! /usr/bin/env bash
packages=(
xorg-server
xorg-xinit
xorg-xrandr
xorg-xsetroot
xorg-xinput
xorg-xprop
xorg-xwininfo
xclip
xdg-utils
neovim
git
base-devel
libx11
libxinerama
libxft
freetype2
fontconfig
picom
feh
ttf-jetbrains-mono-nerd);

for i in "${$packages[@]}"; do 
	sudo pacman -S $i
done

set -e 


echo "Creating Directories"
mkdir -p "$HOME/dotfiles"
mkdir -p "$HOME/.local/share/wallpaper

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

#wallpapper 
ln -sfn "$DOTFILES/wallpappers/cityBlock.jpg" "$HOME/.local/share/wallpaper/cityBlock.jpg"
