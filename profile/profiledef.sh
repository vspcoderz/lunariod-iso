#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="lunariod"
iso_label="LUNARIOD_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Lunariod Project <https://github.com/lunariod/lunariod-iso>"
iso_application="Lunariod Live/Install Medium"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux'
           'uefi.grub')
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.bash_profile"]="0:0:644"
  ["/root/.zprofile"]="0:0:644"
  ["/usr/local/bin/lunariod-menu"]="0:0:755"
  ["/usr/local/bin/lunariod-install"]="0:0:755"
  ["/usr/share/applications/lunariod-install-tui.desktop"]="0:0:644"
)
