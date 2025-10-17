# Accessibility Checklist — Splash Screen (9:385)

Audit date: YYYY-MM-DD

1) Text contrast
- Headline “Get / Cooking” on background image: ensure contrast ratio ≥ 4.5:1 for 16–18.66 px regular, or ≥ 3:1 for large/bold text.
- Caption “Simple way to find Tasty Recipe”: verify contrast with background.

2) Language and semantics
- <main> uses role="main" and aria-label="Splash Screen" (present).
- Headline is <h1> to establish page hierarchy (present).
- Descriptive alt text on images/icons:
  - Background image: id="img-18-217" has alt="Rectangle 6" (consider more descriptive, e.g., "Decorative background"; if purely decorative, set alt="").
  - Arrow icon: has meaningful alt "Arrow Right Icon".

3) Focus management
- Primary Call-To-Action (Start Cooking) is a <button> focusable via keyboard.
- Ensure visible focus outline for keyboard users (browser default OK). Consider adding outline styles in CSS for high visibility.

4) Target size and spacing
- Button size: 243x54px (meets minimum target size guidelines).

5) Motion/animation
- Hover brightness effect only; no auto animations that could trigger vestibular issues.

6) Screen reader experience
- Logical reading order matches DOM: background image (decorative), logo + tagline, headline, caption, CTA, status bar/home indicator (decorative).
- Suggest marking decorative UI chrome (status bar, home indicator) aria-hidden="true" if not already.

7) Responsive/viewport handling
- Fixed artboard preview (375x812). For production, plan responsive alternatives (e.g., container scaling, safe-area handling).

8) Keyboard-only test
- Tab to CTA, press Enter/Space triggers click (native button behavior OK).

Notes:
- If background is purely decorative, consider alt="" and aria-hidden="true" on id="img-18-217".
- Consider increasing text-shadow or overlay to bolster contrast on busy regions of the background image.
