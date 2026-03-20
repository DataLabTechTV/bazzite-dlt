#!/bin/bash

set -euxo pipefail

# shellcheck source=goenv.sh
source goenv.sh

dnf5 -y install pre-commit cloc git-delta neovim
alternatives --install /usr/bin/vim vim /usr/bin/nvim 100

dnf5 -y copr enable dejan/lazygit
dnf5 -y install lazygit
dnf5 -y copr disable dejan/lazygit

go install github.com/gohugoio/hugo@v0.111.3
