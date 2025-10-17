#!/usr/bin/env python3
import os, sys
root = os.path.join("simple-recipe-browser-30180-30189","flutter_frontend","android")
if os.path.isdir(root):
    print(os.path.abspath(root))
    sys.exit(0)
print("ERROR: Android root not found at {}".format(root), file=sys.stderr)
sys.exit(1)
