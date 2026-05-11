#!/bin/bash

DOTFILES="$HOME/dotfiles"

link() {
  local src="$DOTFILES/$1"
  local dst="$2"

  if [ -e "$dst" ] || [ -L "$dst" ]; then
    echo "Error: $dst already exists, skipping"
    return
  fi

  ln -s "$src" "$dst"
  echo "Linked $src -> $dst"
}

link "zshrc"    "$HOME/.zshrc"
link "ghostty"  "$HOME/.config/ghostty"
link "nvim"     "$HOME/.config/nvim"
link "zed"     "$HOME/.config/zed"
