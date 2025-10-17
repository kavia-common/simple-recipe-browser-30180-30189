#!/usr/bin/env bash
# Robust Android/Kotlin project root discovery helper for CI/analyzers.
# Tries multiple strategies and prints an absolute path to stdout if found.
set -euo pipefail

to_abs() {
  python3 - <<'PY'
import os,sys
p=sys.stdin.read().strip()
print(os.path.abspath(p))
PY
}

CANDIDATES=(
  "simple-recipe-browser-30180-30189/flutter_frontend/android"
  "./simple-recipe-browser-30180-30189/flutter_frontend/android"
  "$(./print_android_root.sh 2>/dev/null || true)"
  "$(./android/print-real-root.sh 2>/dev/null || true)"
)

for c in "${CANDIDATES[@]}"; do
  if [ -n "${c}" ] && [ -d "${c}" ]; then
    echo "${c}" | to_abs
    exit 0
  fi
done

# Fallback: heuristic search
FOUND="$(find . -type d -name 'android' -path '*/flutter_frontend/android' | head -n 1 || true)"
if [ -n "${FOUND}" ] && [ -d "${FOUND}" ]; then
  echo "${FOUND}" | to_abs
  exit 0
fi

echo "ERROR: Android project root not found." >&2
echo "Tried candidates:" >&2
printf ' - %s\n' "${CANDIDATES[@]}" >&2
echo "Heuristic search also failed. Set PROJECT_ROOT env or create a symlink 'android' -> real android dir." >&2
exit 2
