#!/bin/bash

export BRIGHTNESS_TMP="$(tempfile)"

# Run xidlehook
xidlehook \
  `# Don't lock when there's a fullscreen application` \
  --not-when-fullscreen \
  `# Don't lock when there's audio playing` \
  --not-when-audio \
  `# Dim the screen after 10min, undim to previous brightness if user becomes active` \
  --timer 600 \
    'xbacklight -get > "$BRIGHTNESS_TMP"; xbacklight -set 1' \
    'xargs -a "$BRIGHTNESS_TMP" xbacklight -set' \
  `# Undim & lock after 5 more minutes` \
  --timer 300 \
    'xargs -a "$BRIGHTNESS_TMP" xbacklight -set; ~/.local/bin/lock' \
    '' \
  `# Finally, suspend hald an hour after it locks` \
  --timer 1800 \
    'systemctl suspend' \
    ''
