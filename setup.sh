#!/usr/bin/sh

dotfiles=(
    "yazi"
    "wezterm"
    "zed"
    "zellij"
    "starship"
    "tmux"
    "hypr"
    "fish"
)

for i in "${dotfiles[@]}"; do
    echo "Applying ${i}..."
    stow ${i} -t ~
done

if [[ -n "${ENABLE_MAOMAOWM}" ]]; then
    echo "Enabling \"maomaowm\" ..."
    stow "maomaowm" -t ~
fi
