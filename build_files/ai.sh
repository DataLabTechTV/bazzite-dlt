#!/bin/bash

set -euxo pipefail

dnf5 -y install zstd
curl -fsSL https://ollama.com/download/ollama-linux-amd64.tar.zst | tar x --zstd -C /usr
