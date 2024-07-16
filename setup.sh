#!/usr/bin/sh

dotfiles=(
    'yazi'
    'wezterm'
    "zed"
)

for i in "${dotfiles[@]}"; do
    echo "Applying ${i}..."
    stow ${i} -t ~
done
