#!/bin/bash

set -euxo pipefail

dnf5 -y install rclone
dnf5 -y install iperf3
dnf5 -y install mkcert
dnf5 -y install nc nmap
