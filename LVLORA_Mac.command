#!/bin/bash
# LVLORA — macOS: ilova rejimida ochadi
D="$(cd "$(dirname "$0")" && pwd)"; U="file://$D/index.html"
for A in "Google Chrome" "Microsoft Edge" "Brave Browser"; do
  if [ -d "/Applications/$A.app" ]; then open -na "$A" --args --app="$U" --window-size=480,900; exit 0; fi
done
open "$D/index.html"
