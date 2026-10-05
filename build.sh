#!/bin/sh
set -eu

export DEBIAN_FRONTEND=noninteractive

if ! command -v lb >/dev/null 2>&1; then
    echo "live-build is required."
    echo "On Debian/Ubuntu: sudo apt update && sudo apt install live-build"
    exit 1
fi

lb clean --purge || true
./auto/config
./auto/build
