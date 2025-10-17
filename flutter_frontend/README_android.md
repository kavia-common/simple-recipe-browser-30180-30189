Android/Kotlin project detector notes:

Primary Flutter Android project:
  simple-recipe-browser-30180-30189/flutter_frontend/android
  - Contains Android app module under app/
  - Has Gradle settings (settings.gradle.kts) and now also settings.gradle for compatibility

Repository-level compatibility wrapper:
  - Root Gradle files (settings.gradle.kts, build.gradle.kts)
  - Thin :app module at ./app to aid scanners

Flutter project root:
  simple-recipe-browser-30180-30189/flutter_frontend
  - pubspec.yaml present
  - Android project nested under android/
