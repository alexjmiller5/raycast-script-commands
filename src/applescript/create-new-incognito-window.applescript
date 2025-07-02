#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Create New Incognito Window
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ../../icons/google-chrome.svg

# Documentation:
# @raycast.author alexander_miller
# @raycast.authorURL https://raycast.com/alexander_miller

tell application "Google Chrome"
    make new window with properties {mode:"incognito"}
    activate
end tell