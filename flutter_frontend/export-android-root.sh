#!/usr/bin/env bash
# Ensure executable bit: chmod +x export-android-root.sh
# Exports variables that point to the Android/Kotlin project root for CI/analyzers.
set -euo pipefail
export PROJECT_ROOT="simple-recipe-browser-30180-30189/flutter_frontend/android"
export ANDROID_PROJECT_ROOT="$PROJECT_ROOT"
export FLUTTER_PROJECT_ROOT="simple-recipe-browser-30180-30189/flutter_frontend"
echo "Exported:"
echo "  PROJECT_ROOT=$PROJECT_ROOT"
echo "  ANDROID_PROJECT_ROOT=$ANDROID_PROJECT_ROOT"
echo "  FLUTTER_PROJECT_ROOT=$FLUTTER_PROJECT_ROOT"
