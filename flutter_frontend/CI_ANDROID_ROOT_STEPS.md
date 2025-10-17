# CI Steps to Resolve Android Root

1) Source environment (optional):
   - source .env || true
   - source android-root.profile || true

2) Resolve root deterministically:
   - bash ./resolve-android-root.sh
   - This will print the absolute path and write it into .android-root.final

3) Export for subsequent steps:
   - export PROJECT_ROOT="$(cat .android-root.final)"

4) Proceed with your analyzer/build step.
