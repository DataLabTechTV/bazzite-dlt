#!/bin/bash

set -ouex pipefail

dnf5 -y install kitty

dnf5 -y copr enable avengemedia/dms
dnf5 -y install niri
dnf5 -y copr disable avengemedia/dms

dnf5 config-manager --set-enabled terra
dnf5 -y install noctalia-shell vicinae
dnf5 config-manager --set-disabled terra
