#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Arc Gmails
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author alexander_miller
# @raycast.authorURL https://raycast.com/alexander_miller

tell application "Arc"
  activate
end tell
delay 0.1
tell application "System Events"
  tell process "Arc"
    click menu item "Gmails" of menu "Spaces" of menu bar 1
  end tell
end tell
delay 0.1

delay 0.3
-- -- Simulate pressing "/" so that the behavior mimics sites where "/" moves focus
-- tell application "System Events"
--   keystroke "/"
-- end tell