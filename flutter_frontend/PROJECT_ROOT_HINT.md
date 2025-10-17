Android/Kotlin project root detection
------------------------------------

If an external analyzer requires an explicit hint to find the Android project root, use the following path:

- Android project root: simple-recipe-browser-30180-30189/flutter_frontend/android
- Flutter app root:     simple-recipe-browser-30180-30189/flutter_frontend

Suggested environment variables for CI or analysis tools:

- PROJECT_ROOT=simple-recipe-browser-30180-30189/flutter_frontend/android
- FLUTTER_PROJECT_ROOT=simple-recipe-browser-30180-30189/flutter_frontend

Notes:
- The splash screen HTML/CSS/JS assets live under: simple-recipe-browser-30180-30189/flutter_frontend/assets/
- These assets are independent of the Android/Kotlin build system.
