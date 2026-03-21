#!/bin/bash

set -euxo pipefail

# shellcheck source=uv-env.sh
source "$(dirname "${BASH_SOURCE[0]}")/uv-env.sh"

dnf5 -y install sqlite3
dnf5 -y install miller gnuplot

curl https://install.duckdb.org | sh

uv tool install --link-mode=copy termgraph
uv tool install --link-mode=copy visidata
