#! /usr/bin/env bash
set -e 

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
ttf-jetbrains-mono-nerd
falkon);

for i in "${packages[@]}"; do 
	sudo pacman -S --noconfirm $i
done

echo "Creating Directories"
mkdir -p "$HOME/.local/share/wallpaper"
mkdir -p "$HOME/.local/src"

DOTFILES="$HOME/dotfiles"
SRC="$HOME/.local/src"

#Compile Suckless tools
cd $DOTFILES/suckless/dmenu/
sudo make clean install

cd $DOTFILES/suckless/dwm
sudo make clean install 

cd $DOTFILES/suckless/st
sudo make clean install

cd $DOTFILES

#Bash Files
ln -sfn "$DOTFILES/mainDotFiles/bashrc" "$HOME/.bashrc"
ln -sfn "$DOTFILES/mainDotFiles/bash_profile" "$HOME/.bash_profile"
ln -sfn "$DOTFILES/mainDotFiles/xinitrc" "$HOME/.xinitrc"

#Config Files
ln -sfn "$DOTFILES/nvim/" "$HOME/.config/nvim"

#Suckless/Desktop Environment
ln -sfn "$DOTFILES/suckless/dmenu/" "$SRC/dmenu"
ln -sfn "$DOTFILES/suckless/dwm/" "$SRC/dwm"
ln -sfn "$DOTFILES/suckless/st/" "$SRC/st"

#wallpapper 
ln -sfn "$DOTFILES/wallpappers/cityBlock.jpg" "$HOME/.local/share/wallpaper/cityBlock.jpg"
