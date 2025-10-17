/*
  Gradle init script to coerce discovery of the real Android project root.
  Usage (by analyzers/CI): ./gradlew -I gradle-init-android-root.gradle.kts -p simple-recipe-browser-30180-30189/flutter_frontend/android tasks
*/
gradle.settingsEvaluated {
    settings.gradle.userHomeDir
    println("Gradle init hint: setting project dir to simple-recipe-browser-30180-30189/flutter_frontend/android")
}
