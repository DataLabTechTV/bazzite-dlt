#!/bin/bash

set -euxo pipefail

dnf5 -y install docker-cli docker-compose

export GOBIN=/usr
go install github.com/jesseduffield/lazydocker@latest
go install github.com/sigstore/cosign/v3/cmd/cosign@latest
