# Android Root Index

Canonical Android project root:
- simple-recipe-browser-30180-30189/flutter_frontend/android

Helpers:
- Scripts: print_android_root.sh, print-android-root.posix.sh, print_android_root.py, find_android_root.sh, androidw
- Env files: .env, .env.android, TOOLCHAIN_HINTS.env, android-root.profile
- Manifests: android-config.json, android_project_manifest.json, project-paths.json, workspace.roots.json, workspace.roots.yaml
- Forwarder: ./android (contains settings.gradle.kts, gradle.properties, print-real-root.sh, package.json)

One-liners:
- bash: echo $(bash print_android_root.sh)
- posix: sh ./print-android-root.posix.sh
- python: python3 print_android_root.py
- node: node print-android-root.js

Export then run analyzer:
export PROJECT_ROOT="simple-recipe-browser-30180-30189/flutter_frontend/android"
