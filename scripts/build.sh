#!/usr/bin/env bash
# scripts/build.sh — Build the Lunariod ISO
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROFILE_DIR="$(dirname "$SCRIPT_DIR")/profile"
WORK_DIR="${WORK_DIR:-/tmp/lunariod-work}"
OUT_DIR="${OUT_DIR:-$(dirname "$SCRIPT_DIR")/out}"

echo "=== Lunariod ISO Build ==="
echo "Profile: $PROFILE_DIR"
echo "Work:    $WORK_DIR"
echo "Output:  $OUT_DIR"
echo ""

# Check prerequisites
if [[ $(id -u) -ne 0 ]]; then
    echo "ERROR: Must run as root (use sudo)"
    exit 1
fi

if ! command -v mkarchiso &>/dev/null; then
    echo "ERROR: archiso not installed. Run: pacman -S archiso"
    exit 1
fi

mkdir -p "$OUT_DIR"

# Clean previous work dir if exists
if [[ -d "$WORK_DIR" ]]; then
    echo "Removing previous work directory..."
    rm -rf "$WORK_DIR"
fi

# Build
echo "Building ISO..."
mkarchiso -v -w "$WORK_DIR" -o "$OUT_DIR" "$PROFILE_DIR"

# Generate checksums
echo ""
echo "Generating checksums..."
cd "$OUT_DIR"
sha256sum lunariod-*.iso > SHA256SUMS
echo "SHA256SUMS:"
cat SHA256SUMS

echo ""
echo "=== Build complete! ==="
echo "ISO: $(ls "$OUT_DIR"/lunariod-*.iso)"
