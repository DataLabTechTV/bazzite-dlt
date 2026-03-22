#!/bin/bash

export UV_CACHE_DIR=/var/cache/uv

UV_TOOL_DIR=$(readlink -f /usr/local)
export UV_TOOL_DIR

UV_TOOL_BIN_DIR=$(readlink -f /usr/local/bin)
export UV_TOOL_BIN_DIR
