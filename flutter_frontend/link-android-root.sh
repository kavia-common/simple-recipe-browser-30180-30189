#!/usr/bin/env bash
set -euo pipefail
TARGET="simple-recipe-browser-30180-30189/flutter_frontend/android"
LINK="android"
if [ -L "$LINK" ] || [ -d "$LINK" ]; then
  echo "Skipping: '$LINK' already exists."
  exit 0
fi
ln -s "$TARGET" "$LINK"
echo "Created symlink: $LINK -> $TARGET"
