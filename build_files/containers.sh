#!/bin/bash

set -euxo pipefail

# shellcheck source=goenv.sh
source "$(dirname "${BASH_SOURCE[0]}")/goenv.sh"

dnf5 -y install docker-cli docker-compose

go install github.com/jesseduffield/lazydocker@latest
go install github.com/sigstore/cosign/v3/cmd/cosign@latest
