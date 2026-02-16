#!/usr/bin/env bash
# scripts/build-docker.sh — Build Lunariod ISO using Docker (works on Ubuntu/any Linux)
# Usage: sudo ./scripts/build-docker.sh
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"

echo "=== Lunariod ISO Build (Docker) ==="
echo "Repo: $REPO_DIR"
echo ""

# Check Docker is installed
if ! command -v docker &>/dev/null; then
    echo "ERROR: Docker not installed."
    echo "Install with: sudo apt install docker.io && sudo systemctl enable --now docker"
    exit 1
fi

# Build the ISO inside an Arch container with --privileged (needed for chroot/mount)
docker run --rm --privileged \
    -v "$REPO_DIR":/build \
    -v /tmp/lunariod-cache:/var/cache/pacman/pkg \
    archlinux:latest \
    bash -c '
        set -euo pipefail
        echo ">>> Initializing pacman keyring..."
        pacman-key --init
        pacman-key --populate archlinux

        echo ">>> Installing archiso..."
        pacman -Syu --noconfirm archiso

        echo ">>> Building ISO..."
        mkarchiso -v -w /tmp/lunariod-work -o /build/out /build/profile/

        echo ">>> Generating checksums..."
        cd /build/out
        sha256sum lunariod-*.iso > SHA256SUMS
        cat SHA256SUMS

        echo ""
        echo "=== Build complete! ==="
    '

echo ""
echo "ISO is at: $REPO_DIR/out/"
ls -lh "$REPO_DIR/out/"*.iso 2>/dev/null
