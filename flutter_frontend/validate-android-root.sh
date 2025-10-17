#!/usr/bin/env bash
set -euo pipefail
ROOT="simple-recipe-browser-30180-30189/flutter_frontend/android"
fail() { echo "FAIL: $1" >&2; exit 1; }
[ -d "$ROOT" ] || fail "Root dir missing: $ROOT"
[ -f "$ROOT/settings.gradle.kts" ] || fail "Missing settings.gradle.kts"
[ -f "$ROOT/app/build.gradle.kts" ] || fail "Missing app/build.gradle.kts"
[ -f "$ROOT/gradle/wrapper/gradle-wrapper.properties" ] || fail "Missing gradle wrapper properties"
echo "OK: Android root validated at $ROOT"
