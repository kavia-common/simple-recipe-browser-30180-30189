Param()
$root = "simple-recipe-browser-30180-30189/flutter_frontend/android"
if (Test-Path $root -PathType Container) {
  $abs = (Resolve-Path $root).Path
  Write-Output $abs
  $env:PROJECT_ROOT = $abs
  exit 0
}
Write-Error "ERROR: Android root not found at $root"
exit 1
