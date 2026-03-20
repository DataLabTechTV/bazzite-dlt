#!/bin/bash

set -euxo pipefail

# shellcheck source=goenv.sh
source goenv.sh

dnf5 -y install golang cargo uv nodejs
dnf5 -y install golangci-lint

go install golang.org/x/tools/gopls@latest
go install mvdan.cc/sh/v3/cmd/shfmt@latest

cargo install --root /usr just-lsp
