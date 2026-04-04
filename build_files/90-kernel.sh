#!/bin/bash

set -euxo pipefail

kver=$(cd /usr/lib/modules && echo *)
dracut --no-hostonly --kver "$kver" --reproducible --zstd -v --add ostree --add fido2 -f \
	"/usr/lib/modules/$kver/initramfs.img"

chmod 0600 "/usr/lib/modules/$kver/initramfs.img"
