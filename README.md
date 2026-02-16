<p align="center">
  <img src="assets/logo.png" alt="Lunariod Logo" width="280">
</p>

# Lunariod

**Minimalist Arch Linux distribution for Intel hardware — Hyprland + Gaming + Coding**

> **ℹ️ INFO:** This project is fully vibecoded and fully tested, but still — use it at your own risk.

Lunariod is an opinionated, Arch-based ISO that ships a curated Hyprland (Wayland) desktop with a sky-blue accent theme, pre-configured PipeWire audio, and a gaming-ready stack. It installs through a branded TUI installer backed by `archinstall`.

## ✨ Features

- 🖥️ **Hyprland** tiling Wayland compositor with sky-200 (`#BAE6FD`) accent theme
- 🎮 **Gaming**: Steam (pacman), gamescope, GameMode, MangoHud
- 💻 **Coding**: VS Code (Flatpak), base-devel, Git, Python, Node.js, Firefox
- 🧊 **Flatpak**: Flathub enabled by default, VS Code + Prism Launcher pre-installed
- 🔧 **Intel optimized**: Mesa + Vulkan Intel drivers (including 32-bit for Steam)
- 🎨 **Beautiful**: Custom wallpapers + Lunariod branding throughout
- 📦 **Minimal**: No bloat, no office suite, no extra DEs

## 🖼️ Wallpapers

Three light-blue wave wallpapers ship by default, matching the sky-200 theme. Managed by `hyprpaper`.

## 📥 Download

Grab the latest ISO from [**Releases**](../../releases/latest).

## 🔧 Building

**Requires an Arch Linux build host** (or Docker/CI):

```bash
# Native Arch
sudo pacman -Syu archiso
sudo ./scripts/build.sh

# Docker (Ubuntu/any Linux)
sudo ./scripts/build-docker.sh
```

Output: `out/lunariod-YYYY.MM.DD-x86_64.iso`

## 🧪 Testing

Boot the ISO in VirtualBox with:
- 4 GB RAM, 2+ CPUs, 128 MB VRAM, 3D acceleration enabled
- VMSVGA graphics controller, EFI enabled
- Attach ISO as **CD/DVD** (not hard disk)

## 📁 Project Structure

```
profile/
├── profiledef.sh          # ISO metadata & branding
├── packages.x86_64        # Curated package list
├── pacman.conf             # Multilib enabled
└── airootfs/
    ├── etc/skel/.config/   # Hyprland, Waybar, Wofi, hyprpaper
    ├── usr/local/bin/      # lunariod-install, lunariod-menu
    └── usr/share/lunariod/ # Logo
```

## 📜 License

MIT — This project is NOT affiliated with Arch Linux.
