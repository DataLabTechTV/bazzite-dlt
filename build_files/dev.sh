#!/bin/bash

set -euxo pipefail

dnf5 -y install pre-commit cloc git-delta neovim
alternatives --install /usr/bin/vim vim /usr/bin/nvim 100

dnf5 -y copr enable dejan/lazygit
dnf5 -y install lazygit
dnf5 -y copr disable dejan/lazygit

export GOBIN=/usr
go install github.com/gohugoio/hugo@v0.111.3
