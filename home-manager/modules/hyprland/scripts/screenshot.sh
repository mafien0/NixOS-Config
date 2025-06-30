#!/bin/sh

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
FILENAME="Screenshot-$(date +%F_%T).png"
SAVE_PATH="$HOME/Pictures/Screenshots/$FILENAME"

# Option 2: Capture the region, save to file AND copy to clipboard with notification
grim -g "$REGION" /tmp/screenshot_temp.png

if [ $? -eq 0 ]; then
  wl-copy </tmp/screenshot_temp.png
  mv /tmp/screenshot_temp.png "$SAVE_PATH"
  dunstify "Region screenshot taken"
else
  dunstify "Error taking screenshot" -u critical -t 3000
fi

# Remove the temporary file (just in case it remains)
rm -f /tmp/screenshot_temp.png
