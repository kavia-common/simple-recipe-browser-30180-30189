#!/usr/bin/env bash
set -euo pipefail
REAL="../simple-recipe-browser-30180-30189/flutter_frontend/android"
if [ -d "$REAL" ]; then
  echo "$REAL"
  exit 0
fi
echo "ERROR: Real Android project not found at $REAL" >&2
exit 1
