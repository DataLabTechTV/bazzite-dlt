#!/bin/bash

GOBIN=$(readlink -f /usr/local/bin)
export GOBIN

export GOPATH=/var/cache/go
export GOCACHE=/var/cache/go-build

mkdir -p "$GOBIN" "$GOPATH" "$GOCACHE"
