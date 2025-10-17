#!/usr/bin/env bash
set -euo pipefail
ANDROID_DIR="simple-recipe-browser-30180-30189/flutter_frontend/android"
if [ ! -d "$ANDROID_DIR" ]; then
  echo "ERROR: Android dir not found at $ANDROID_DIR" >&2
  exit 1
fi
exec "$ANDROID_DIR/gradlew" -I "$(pwd)/gradle-init-android-root.gradle.kts" -p "$ANDROID_DIR" "$@"
