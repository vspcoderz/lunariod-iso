# Lunariod

**Minimalist Arch Linux distribution for Intel hardware — Hyprland + Gaming + Coding**

> **ℹ️ INFO:** This project is fully vibecoded and fully tested, but still — use it at your own risk.

Lunariod is an opinionated, Arch-based ISO that ships a curated Hyprland (Wayland) desktop with a sky-blue accent theme, pre-configured PipeWire audio, and a gaming-ready stack. It installs through a branded TUI installer backed by `archinstall`.

## Features

- 🖥️ **Hyprland** tiling Wayland compositor with sky-200 (`#BAE6FD`) accent theme
- 🎮 **Gaming**: Steam (pacman), gamescope, GameMode, MangoHud
- 💻 **Coding**: VS Code (Flatpak), base-devel, Git, Python, Node.js, Firefox
- 🧊 **Flatpak**: Flathub enabled by default, VS Code + Prism Launcher pre-installed
- 🔧 **Intel optimized**: Mesa + Vulkan Intel drivers (including 32-bit for Steam)
- 📦 **Minimal**: No bloat, no office suite, no extra DEs

## Building

**Requires an Arch Linux build host.**

```bash
sudo pacman -Syu archiso
sudo mkarchiso -v -w /tmp/lunariod-work -o ./out ./profile/
```

Output: `out/lunariod-YYYY.MM.DD-x86_64.iso`

## Testing

Boot the ISO in VirtualBox with:
- 4 GB RAM, 2+ CPUs, 128 MB VRAM, 3D acceleration enabled
- VMSVGA graphics controller, EFI enabled

## License

MIT — This project is NOT affiliated with Arch Linux.
