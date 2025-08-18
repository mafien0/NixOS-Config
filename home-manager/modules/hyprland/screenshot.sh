#!/usr/bin/env bash
FILENAME="Screenshot-$(date +%F_%T).png"
TARGET_DIR="$HOME/Pictures/Screenshots"
SAVE_PATH="$TARGET_DIR"/"$FILENAME"

PROCESS_NAME="slurp"

# Check if slurp is already running
if pgrep -x "$PROCESS_NAME" >/dev/null; then
  exit 1
fi

# Use hyprpicker to freeze the screen
# The --freeze flag freezes the display while keeping it interactive
hyprpicker --freeze &
HYPRPICKER_PID=$!

# Give hyprpicker a moment to freeze the screen
sleep 0.1

# Now take the screenshot while screen is frozen
REGION=$(slurp)

# Kill hyprpicker to unfreeze
kill $HYPRPICKER_PID 2>/dev/null

# Check if an area was actually selected
if [ -z "$REGION" ]; then
  dunstify "Screenshot cancelled" -t 2000
  exit 1
fi

# Now take the actual screenshot with the frozen content
grim -g "$REGION" /tmp/screenshot_temp.png

if [ ! -d "$TARGET_DIR" ]; then
  mkdir -p "$TARGET_DIR"
fi

if [ $? -eq 0 ]; then
  wl-copy < /tmp/screenshot_temp.png
  mv /tmp/screenshot_temp.png "$SAVE_PATH"
  dunstify "Screenshot saved and copied to clipboard" -t 2000
fi

# Clean up
rm -f /tmp/screenshot_temp.png
