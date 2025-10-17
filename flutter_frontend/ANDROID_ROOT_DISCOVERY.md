Android Root Discovery Aids
===========================

Some analyzers require a top-level android/ path. This repository provides multiple discovery aids:

1) Real Android project:
   simple-recipe-browser-30180-30189/flutter_frontend/android

2) Root-level helper scripts:
   - ./print_android_root.sh         -> prints the real Android project path
   - ./export-android-root.sh        -> exports environment variables for CI tools
   - ./gradlew (shim)                -> delegates to real Android wrapper

3) Root-level metadata:
   - .project-root
   - android_project_manifest.json

4) Android folder forwarder for tools requiring repo-top android/:
   - ./android/ (forwarder)
     - README.md
     - settings.gradle.kts
     - gradle.properties
     - print-real-root.sh

These aids are non-invasive and do not modify the mobile project. Use any of them to point your analyzer to the real Android/Kotlin root.
