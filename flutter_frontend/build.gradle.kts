/*
  Root-level Gradle build stub to assist analyzers in locating the Android project.
  The actual Android project resides at:
  simple-recipe-browser-30180-30189/flutter_frontend/android

  This file is intentionally minimal and not meant to build the project from the repo root.
*/
plugins {
    // No plugins; this is a discovery aid only
}

tasks.register("printAndroidRoot") {
    doLast {
        println("Android project root: simple-recipe-browser-30180-30189/flutter_frontend/android")
    }
}
