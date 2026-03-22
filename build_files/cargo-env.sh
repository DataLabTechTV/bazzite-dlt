#!/bin/bash

export CARGO_HOME=/var/cache/cargo

CARGO_INSTALL_ROOT=$(readlink -f /usr/local)
export CARGO_INSTALL_ROOT
