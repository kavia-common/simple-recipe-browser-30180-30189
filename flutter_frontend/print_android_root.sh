#!/usr/bin/env bash
set -euo pipefail

# Ensure executable bit: chmod +x print_android_root.sh
# Prints the Android/Kotlin project root directory to stdout for tools that need it.
ROOT="simple-recipe-browser-30180-30189/flutter_frontend/android"
if [ -d "$ROOT" ]; then
  echo "$ROOT"
  exit 0
fi

# Fallback to current working tree search
FOUND="$(find . -type d -name 'android' -path '*/flutter_frontend/android' | head -n 1 || true)"
if [ -n "$FOUND" ]; then
  echo "$FOUND"
  exit 0
fi

echo "ERROR: Android root not found" >&2
exit 1
