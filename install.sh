#!/bin/bash

################################################################################
#									  nvim                                     #
################################################################################
# 
mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"
# -sf for symbolic link, f removes existing link or file with the same name
ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim"

################################################################################
#									   X11                                     #
################################################################################

rm -rf "$HOME/.config/X11"
ln -s "$HOME/dotfiles/X11" "$HOME/.config"
