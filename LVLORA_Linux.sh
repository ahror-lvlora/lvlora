#!/bin/bash
# LVLORA — Linux: ilova rejimida ochadi
D="$(cd "$(dirname "$0")" && pwd)"; U="file://$D/index.html"
for B in google-chrome chromium chromium-browser microsoft-edge brave-browser; do
  if command -v "$B" >/dev/null 2>&1; then "$B" --app="$U" --window-size=480,900 >/dev/null 2>&1 & exit 0; fi
done
xdg-open "$D/index.html"
