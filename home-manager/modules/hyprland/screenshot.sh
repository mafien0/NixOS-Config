#!/usr/bin/env bash
FILENAME="Screenshot-$(date +%F_%T).png"
TARGET_DIR="$HOME/Pictures/Screenshots"
SAVE_PATH="$TARGET_DIR"/"$FILENAME"

PROCESS_NAME="slurp" # The name of the process we want to check

# Check if slurp is already running
if pgrep -x "$PROCESS_NAME" >/dev/null; then
  exit 1 # Exit the script silently to prevent launching a new instance
fi

# If slurp is not running, continue with the screenshot process

# Get the coordinates of the selected region using slurp
REGION=$(slurp)

# Check if an area was actually selected (slurp returns an empty string if cancelled)
if [ -z "$REGION" ]; then
  dunstify "Screenshot cancelled" -t 2000
  exit 1
fi

# Generate the filename with the current date and time

# Option 2: Capture the region, save to file AND copy to clipboard with notification
grim -g "$REGION" /tmp/screenshot_temp.png

if [ ! -d "$TARGET_DIR" ]; then
	mkdir -p "$TARGET_DIR"
fi

if [ $? -eq 0 ]; then
  wl-copy </tmp/screenshot_temp.png
  mv /tmp/screenshot_temp.png "$SAVE_PATH"
fi

# Remove the temporary file (just in case it remains)
rm -f /tmp/screenshot_temp.png
