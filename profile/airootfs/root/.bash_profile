# ~/.bash_profile — Lunariod live environment
# Auto-launch the Lunariod menu on tty1
if [[ -z "$DISPLAY" ]] && [[ -z "$WAYLAND_DISPLAY" ]] && [[ $(tty) == /dev/tty1 ]]; then
    /usr/local/bin/lunariod-menu
fi
