#!/bin/bash

export GOBIN=/usr/local/bin
export GOPATH=/var/cache/go
export GOCACHE=/var/cache/go-build
mkdir -p "$GOPATH" "$GOCACHE"
