#!/usr/bin/env bash
# Sets PROJECT_ROOT and invokes a given analyzer command.
set -euo pipefail
export PROJECT_ROOT="simple-recipe-browser-30180-30189/flutter_frontend/android"
echo "Using PROJECT_ROOT=$PROJECT_ROOT"
if [ "$#" -gt 0 ]; then
  exec "$@"
else
  echo "No analyzer command provided. Example:"
  echo "  bash run-analyzer.sh ./detect-android-root"
fi
