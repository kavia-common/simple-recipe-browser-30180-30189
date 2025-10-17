# Splash Screen (9:385) - HTML/CSS/JS Assets

Files:
- splash-screen-9-385.html
- splash-screen-9-385.css
- splash-screen-9-385.js
- common.css (shared design tokens)
- app.js (shared global script)
- figmaimages/ (all referenced image/icon assets)

Open locally:
1) From this folder, open `splash-screen-9-385.html` in a modern browser.
2) Ensure relative paths remain intact (figmaimages/ is under the same assets/ directory).

Design tokens used (see common.css):
- Colors: `--color-ffffff`, `--color-000000`, `--color-129575` (button background)
- Typography: `--typo-61`, `--typo-62`, `--typo-63`, `--typo-64` families/sizes/weights
- Spacing and shadows are available for future screens

Positioning:
- Pixel-perfect absolute positioning calculated from Figma coordinates
- Parent-child relative offsets applied per Figma root (x: 11, y: -430)

Notes:
- Image/icon assets are referenced with `figmaimages/filename.ext`
- No negative CSS positioning values; all coordinates converted to parent-relative positive offsets
- Status bar and home indicator coordinates match the JSON hierarchy
