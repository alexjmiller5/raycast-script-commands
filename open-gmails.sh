#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open GMails
# @raycast.mode silent

# Optional parameters:
# @raycast.icon icons/gmail.svg

# Documentation:
# @raycast.description Opens my GMail Accounts
# @raycast.author alexander_miller
# @raycast.authorURL https://raycast.com/alexander_miller

# Define the hardcoded URLs
URLS=(
  "https://mail.google.com/mail/u/0/#inbox"
  "https://mail.google.com/mail/u/1/#inbox"
)

# Open the URLs in Google Chrome
open -a "Google Chrome" "${URLS[@]}"
