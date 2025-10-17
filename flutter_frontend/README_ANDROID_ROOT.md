# Android/Kotlin Project Root

Real Android project root:
- simple-recipe-browser-30180-30189/flutter_frontend/android

Discovery aids available at repository root:
- .project-root
- .android
- .kotlin
- android_project_manifest.json
- project-paths.json
- workspace.roots.json
- android/ (forwarder directory with settings.gradle.kts, gradle.properties)
- gradlew (shim)
- settings.gradle (forwarder)
- build.gradle.kts (stub)
- gradle.properties (stub)
- print_android_root.sh, find_android_root.sh, print-project-root.sh
- print-android-root.js
- TOOLCHAIN_HINTS.env, .env.android

If your analyzer still fails, set:
- PROJECT_ROOT=simple-recipe-browser-30180-30189/flutter_frontend/android

Or create a symlink: `ln -s simple-recipe-browser-30180-30189/flutter_frontend/android android`
