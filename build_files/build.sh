#!/bin/bash

set -ouex pipefail

# 1. Gỡ bỏ Steam và các gói RPM hệ thống dư thừa
rpm-ostree override remove \
    steam \
    steam-devices \
    waydroid \
    lutris \
    malcontent \
    malcontent-control

# 2. Xóa các shortcut (.desktop) rác để làm sạch menu ứng dụng hoàn toàn
rm -f /usr/share/applications/discourse.desktop
rm -f /usr/share/applications/bazzite-documentation.desktop
rm -f /usr/share/applications/boldbrew.desktop
rm -f /usr/share/applications/steam.desktop
