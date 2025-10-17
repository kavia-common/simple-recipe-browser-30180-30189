# Create an 'android' symlink at repository root (if your environment allows)

Linux/macOS:
  ln -s simple-recipe-browser-30180-30189/flutter_frontend/android android

Windows (PowerShell with admin):
  New-Item -ItemType SymbolicLink -Path android -Target simple-recipe-browser-30180-30189/flutter_frontend/android

This helps analyzers that only detect the project if an 'android' folder exists at repo root.
