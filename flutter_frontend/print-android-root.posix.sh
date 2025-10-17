#!/bin/sh
# POSIX-compatible Android root printer
ROOT="simple-recipe-browser-30180-30189/flutter_frontend/android"
if [ -d "$ROOT" ]; then
  # Try pwd -P to resolve absolute path
  DIR="$(cd "$(dirname "$ROOT")" 2>/dev/null && pwd -P)"
  if [ -n "$DIR" ]; then
    echo "$DIR/$(basename "$ROOT")"
    exit 0
  fi
  echo "$ROOT"
  exit 0
fi
echo "ERROR: Android root not found" 1>&2
exit 1
