#!/usr/bin/env bash
# Forward gradle wrapper calls from the top-level android/ forwarder to the real Android project.
set -euo pipefail
REAL="../simple-recipe-browser-30180-30189/flutter_frontend/android"
if [ ! -d "$REAL" ]; then
  echo "ERROR: Real Android project not found at $REAL" >&2
  exit 1
fi
if [ -x "$REAL/gradlew" ]; then
  exec "$REAL/gradlew" "$@"
fi
# Fallback to gradle if wrapper is not executable
( cd "$REAL" && exec gradle "$@" )
