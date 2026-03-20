#!/bin/bash

set -euxo pipefail

dnf5 -y install \
	"https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm" \
	"https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

dnf5 -y install ImageMagick ImageMagick-heic libheif-freeworld libde265

dnf config-manager --disable rpmfusion-free rpmfusion-nonfree

export UV_CACHE_DIR=/var/cache/uv
uv tool install --link-mode=copy rembg[gpu,cli]
