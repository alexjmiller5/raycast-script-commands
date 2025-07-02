#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Arc Blank Window
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author alexander_miller
# @raycast.authorURL https://raycast.com/alexander_miller

-- tell application "Arc"
--   activate
-- end tell
-- delay 0.5
-- -- Open a new blank window
-- tell application "System Events"
--   tell process "Arc"
--     click menu item "Blank window" of menu "File" of menu bar 1
--   end tell
-- end tell
-- delay 0.5
-- -- Open a new tab (Cmd+T) and enter "google.com"
-- tell application "System Events"
--   keystroke "google.com"
--   delay 0.3
--   key code 36 -- press Return/Enter
-- end tell

-- WORKS!!!
tell application "Arc"
  activate
end tell
delay 0.1
tell application "System Events"
  tell process "Arc"
    click menu item "Blank window" of menu "File" of menu bar 1
  end tell
end tell
delay 0.1
tell application "Arc"
  tell front window
    make new tab at end of tabs with properties {URL:"https://www.google.com/search?q=test"}
  end tell
  activate
end tell
delay 1
-- Simulate pressing "/" so that the behavior mimics sites where "/" moves focus
tell application "System Events"
  keystroke "/"
end tell




-- tell application "Arc"
--   tell front window
--     make new tab at end of tabs with properties {URL:"https://www.google.com/search?q="}
--   end tell
--   activate
-- end tell
-- tell application "Arc"
--   tell front window
--     tell active tab
--       do JavaScript "if(document.getElementsByName('q').length > 0){ document.getElementsByName('q')[0].focus(); }"
--     end tell
--   end tell
-- end tell

-- tell application "Arc"
--   activate
-- end tell
-- delay 0.5
-- tell application "System Events"
--   tell process "Arc"
--     click menu item "Blank window" of menu "File" of menu bar 1
--   end tell
-- end tell
-- delay 0.5
-- tell application "Arc"
--   tell front window
--     -- Create a new tab with Google search results for an empty query.
--     make new tab at end of tabs with properties {URL:"https://www.google.com/search?q="}
--   end tell
--   activate
-- end tell
-- -- Wait a moment for the page to load
-- delay 1.0
-- tell application "Arc"
--   tell front window
--     tell active tab
--       -- Run JavaScript to focus the search box (which has name "q")
--       do JavaScript "if(document.getElementsByName('q').length > 0){ document.getElementsByName('q')[0].focus(); }"
--     end tell
--   end tell
-- end tell