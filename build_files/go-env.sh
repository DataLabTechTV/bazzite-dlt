#!/bin/bash

export GOBIN=/var/usrlocal/bin
export GOPATH=/var/cache/go
export GOCACHE=/var/cache/go-build

mkdir -p "$GOBIN" "$GOPATH" "$GOCACHE"
