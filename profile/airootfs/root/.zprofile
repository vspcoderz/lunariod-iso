#!/usr/bin/env zsh
# /root/.zprofile — Lunariod Live Session
# Auto-start the Lunariod menu on tty1 (live CD environment)

if [[ -z "$DISPLAY" && -z "$WAYLAND_DISPLAY" && "$(tty)" == "/dev/tty1" ]]; then
    /usr/local/bin/lunariod-menu
fi
