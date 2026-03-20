#!/bin/bash

set -euxo pipefail

dnf5 -y install ImageMagick-heic
dnf5 -y --enable-repo=rpmfusion-free install libheif-freeworld

export UV_CACHE_DIR=/var/cache/uv
uv tool install --link-mode=copy rembg[gpu,cli]
