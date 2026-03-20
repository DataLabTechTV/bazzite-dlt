#!/bin/bash

set -euxo pipefail

dnf5 -y copr enable atim/starship
dnf5 -y install starship
dnf5 -y copr disable atim/starship

dnf5 -y install chezmoi direnv fastfetch kitty
dnf5 -y install zoxide bat ripgrep fd-find
cargo install --root /usr eza

dnf5 -y install ncdu btop prettyping
dnf5 -y install jq yq
