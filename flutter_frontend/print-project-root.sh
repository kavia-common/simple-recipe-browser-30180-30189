#!/usr/bin/env bash
set -euo pipefail
if [ -n "${PROJECT_ROOT:-}" ] && [ -d "${PROJECT_ROOT}" ]; then
  echo "${PROJECT_ROOT}"
  exit 0
fi
# default to real android root
REAL="simple-recipe-browser-30180-30189/flutter_frontend/android"
if [ -d "$REAL" ]; then
  echo "$REAL"
  exit 0
fi
echo "ERROR: PROJECT_ROOT not set and default Android root not found." >&2
exit 1
