#!/usr/bin/env bash
set -euo pipefail
DIR="simple-recipe-browser-30180-30189/flutter_frontend/android"
exec "$DIR/gradlew" -p "$DIR" "$@"
