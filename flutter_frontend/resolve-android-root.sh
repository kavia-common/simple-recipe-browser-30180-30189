#!/usr/bin/env bash
# Canonical Android/Kotlin project root resolver for CI/analyzers.
# Prints the resolved absolute path on stdout, writes it to .android-root.final,
# and exits 0 on success (non-zero otherwise).

set -euo pipefail

CANDIDATES=(
  "simple-recipe-browser-30180-30189/flutter_frontend/android"
  "./simple-recipe-browser-30180-30189/flutter_frontend/android"
)

# Env overrides take precedence
if [ -n "${PROJECT_ROOT:-}" ]; then
  CANDIDATES=("$PROJECT_ROOT" "${CANDIDATES[@]}")
fi
if [ -n "${ANDROID_PROJECT_ROOT:-}" ]; then
  CANDIDATES=("$ANDROID_PROJECT_ROOT" "${CANDIDATES[@]}")
fi

resolve_abs() {
  local p="$1"
  # Use POSIX compatible resolution
  ( cd "$(dirname "$p")" >/dev/null 2>&1 && pwd -P )/$(basename "$p")
}

validate_root() {
  local r="$1"
  [ -d "$r" ] || return 1
  [ -f "$r/settings.gradle.kts" ] || return 1
  [ -f "$r/app/build.gradle.kts" ] || return 1
  [ -f "$r/gradle/wrapper/gradle-wrapper.properties" ] || return 1
  return 0
}

for cand in "${CANDIDATES[@]}"; do
  if [ -n "$cand" ] && [ -d "$cand" ]; then
    ABS="$(resolve_abs "$cand")"
    if validate_root "$ABS"; then
      echo "$ABS"
      echo "$ABS" > .android-root.final
      exit 0
    fi
  fi
done

# Fallback heuristic search
FOUND="$(find . -type f -name 'settings.gradle.kts' -path '*/flutter_frontend/android/settings.gradle.kts' | head -n 1 || true)"
if [ -n "$FOUND" ]; then
  ROOT_DIR="$(dirname "$FOUND")"
  if validate_root "$ROOT_DIR"; then
    ABS="$(resolve_abs "$ROOT_DIR")"
    echo "$ABS"
    echo "$ABS" > .android-root.final
    exit 0
  fi
fi

echo "ERROR: Unable to resolve Android/Kotlin project root." >&2
echo "Hint: export PROJECT_ROOT=simple-recipe-browser-30180-30189/flutter_frontend/android" >&2
exit 2
