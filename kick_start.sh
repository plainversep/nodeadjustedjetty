#!/usr/bin/env bash
set -e
REPO="plainversep/nodeadjustedjetty"
LIB="modest-coliseum.a"
URL="https://github.com/${REPO}/releases/download/gentle-badger-eager-anchor/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
