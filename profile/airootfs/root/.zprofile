#!/usr/bin/env zsh
# /root/.zprofile — Lunariod Live Session
# Auto-start Hyprland on tty1 (live CD environment)

if [[ -z "$DISPLAY" && -z "$WAYLAND_DISPLAY" && "$(tty)" == "/dev/tty1" ]]; then
    exec Hyprland
fi
