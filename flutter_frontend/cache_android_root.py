#!/usr/bin/env python3
import os, json
root = os.path.join("simple-recipe-browser-30180-30189","flutter_frontend","android")
data = {"android_root": os.path.abspath(root) if os.path.isdir(root) else None}
with open(".android-root.cache.json","w") as f:
    json.dump(data, f)
if data["android_root"]:
    print(data["android_root"])
    raise SystemExit(0)
print("ERROR: Android root not found at {}".format(root))
raise SystemExit(2)
