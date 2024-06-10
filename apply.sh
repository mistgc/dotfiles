#!/usr/bin/sh

dotfiles=(
    'yazi'
)

for i in "${dotfiles[@]}"; do
    echo "Applying ${i}..."
    stow ${i} -t ~
done
