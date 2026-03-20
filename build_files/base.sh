#!/bin/bash

set -euxo pipefail

dnf5 -y remove xwaylandvideobridge
dnf5 -y install xdg-desktop-portal-gnome qt6ct
dnf5 -y install wlsunset cava playerctl

dnf5 -y copr enable avengemedia/dms
dnf5 -y install niri
dnf5 -y copr disable avengemedia/dms

dnf5 config-manager setopt terra.enabled=1
dnf5 -y install noctalia-shell
dnf5 config-manager setopt terra.enabled=0
