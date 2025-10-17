#!/usr/bin/env bash
# CI-friendly Android/Kotlin root discovery. Emits multiple formats and writes a cache file.
set -euo pipefail
ROOT="simple-recipe-browser-30180-30189/flutter_frontend/android"
ABS="$(cd "$(dirname "$ROOT")" && pwd)/$(basename "$ROOT")"
echo "$ROOT"
echo "ANDROID_PROJECT_ROOT=$ROOT"
echo "{\"android_root\":\"$ROOT\"}"
echo "$ABS"
# Write cache files analyzers might read:
echo "$ROOT" > .android-root-path
printf '{"android_root":"%s"}\n' "$ROOT" > .android-root.json
exit 0
