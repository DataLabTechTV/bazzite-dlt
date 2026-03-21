#!/bin/bash

set -euxo pipefail

# shellcheck source=uv-env.sh
source "$(dirname "${BASH_SOURCE[0]}")/uv-env.sh"

dnf5 -y install sqlite3
dnf5 -y install miller gnuplot

curl -L https://install.duckdb.org/v1.5.0/duckdb_cli-linux-amd64.zip | funzip >/var/usr/local/bin/duckdb
chmod +x /var/usr/local/bin/duckdb

uv tool install --link-mode=copy termgraph
uv tool install --link-mode=copy visidata
