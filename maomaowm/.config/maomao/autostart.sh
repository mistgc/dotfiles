#!/bin/bash

set +e

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots >/dev/null 2>&1
/usr/lib/xdg-desktop-portal-wlr >/dev/null 2>&1 &

# notify
swaync -c ~/.config/maomao/swaync/config.json -s ~/.config/maomao/swaync/style.css >/dev/null 2>&1 &

# wallpaper
# swaybg -i $(find $HOME/Pictures/Wallpapers/ -type f | shuf -n 1) >/dev/null 2>&1 &
swaybg -i ~/Pictures/Wallpapers/wallhaven-ogx5y9_3840x2160.png >/dev/null 2>&1 &

# bar
waybar -c ~/.config/maomao/waybar/config -s ~/.config/maomao/waybar/style.css >/dev/null 2>&1 &

# ime input
fcitx5 --replace -d >/dev/null 2>&1 &

# keep clipboard content
wl-clip-persist --clipboard regular --reconnect-tries 0 >/dev/null 2>&1 &

# clipboard content manager
wl-paste --type text --watch cliphist store >/dev/null 2>&1 &

# bluetooth 
blueman-applet >/dev/null 2>&1 &
