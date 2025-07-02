#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title New Finder Window
# @raycast.mode silent

# Optional parameters:
# @raycast.icon icons/finder.png

# Documentation:
# @raycast.description Opens a new finder window
# @raycast.author alexander_miller
# @raycast.authorURL https://raycast.com/alexander_miller

tell application "Finder"
	make new Finder window to folder (path to home folder as text)
	do shell script "open -a Finder"
end tell