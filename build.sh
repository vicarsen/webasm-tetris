#!/bin/sh
set -eu

echo "Building WebAssembly hello world..."

export EM_CACHE="/cache"
mkdir -p "$EM_CACHE"
mkdir -p /out

em++ \
  main.cpp \
  -O2 \
  -s WASM=1 \
  -s EXIT_RUNTIME=1 \
  -o /out/main.html

echo "Build complete. Artifacts:"
ls -l /out
