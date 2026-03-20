#!/bin/bash

set -euxo pipefail

dnf5 -y install sqlite3
dnf5 -y install miller gnuplot

curl https://install.duckdb.org | sh

export UV_CACHE_DIR=/var/cache/uv
uv tool install --link-mode=copy termgraph
uv tool install --link-mode=copy visidata
