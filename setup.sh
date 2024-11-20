#!/usr/bin/sh

dotfiles=(
    "yazi"
    "wezterm"
    "zed"
    "zellij"
    "starship"
    "tmux"
)

for i in "${dotfiles[@]}"; do
    echo "Applying ${i}..."
    stow ${i} -t ~
done
