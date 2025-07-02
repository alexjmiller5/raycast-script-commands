#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Search from Clipboard
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🔗

# Documentation:
# @raycast.description Opens link(s) from the clipboard. If none are valid URLs,
# opens a new Chrome tab with the clipboard text as a Google search query.
# @raycast.author alexander_miller
# @raycast.authorURL https://raycast.com/alexander_miller

# Pure bash URL encoding function
urlencode() {
  local string="$1"
  local length="${#string}"
  local encoded=""
  local i c
  for ((i = 0; i < length; i++)); do
    c="${string:$i:1}"
    case "$c" in
    [a-zA-Z0-9_.~-])
      encoded+="$c"
      ;;
    ' ')
      encoded+="+"
      ;;
    *)
      encoded+=$(printf '%%%02X' "'$c")
      ;;
    esac
  done
  echo "$encoded"
}

# Get the clipboard content
CLIPBOARD_CONTENT=$(pbpaste)

# Array for valid URLs
VALID_URLS=()

# Process each line from the clipboard
while read -r line; do
  URL=$(echo "$line" | tr -d '[:space:]')
  if [[ "$URL" =~ ^(https?://)?([a-zA-Z0-9.-]+\.[a-zA-Z]{2,})(/.*)?$ ]]; then
    if [[ ! "$URL" =~ ^https?:// ]]; then
      URL="https://$URL"
    fi
    VALID_URLS+=("$URL")
  fi
done <<<"$CLIPBOARD_CONTENT"

if [ ${#VALID_URLS[@]} -gt 0 ]; then
  open -a "Google Chrome" "${VALID_URLS[@]}"
elif [ -n "$CLIPBOARD_CONTENT" ]; then
  # Use bash function to encode the clipboard text
  ENCODED_QUERY=$(urlencode "$CLIPBOARD_CONTENT")
  open -a "Google Chrome" "https://www.google.com/search?q=${ENCODED_QUERY}"
else
  echo "Clipboard is empty."
  exit 1
fi
