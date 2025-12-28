#!/bin/sh
set -eu

echo "Building WebAssembly hello world..."

em++ \
  main.cpp \
  -O2 \
  -s WASM=1 \
  -s EXIT_RUNTIME=1 \
  -o hello.html

mkdir -p /out

cp hello.html hello.js hello.wasm /out/

echo "Build complete. Artifacts:"
ls -l /out
