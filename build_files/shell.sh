#!/bin/bash

set -euxo pipefail

# shellcheck source=cargo-env.sh
source "$(dirname "${BASH_SOURCE[0]}")/cargo-env.sh"

dnf5 -y copr enable atim/starship
dnf5 -y install starship
dnf5 -y copr disable atim/starship

dnf5 -y install chezmoi direnv kitty
dnf5 -y install zoxide bat ripgrep fd-find
cargo install eza

dnf5 -y install ncdu
dnf5 -y install yq
