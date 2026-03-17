#!/bin/bash

set -ouex pipefail

dnf5 -y install kitty qt6c

dnf5 -y copr enable avengemedia/dms
dnf5 -y install niri
dnf5 -y copr disable avengemedia/dms

dnf5 config-manager setopt terra.enabled=1
dnf5 -y install noctalia-shell
dnf5 config-manager setopt terra.enabled=0
