# raycast-script-commands

My Raycast [script commands](https://github.com/raycast/script-commands):
small AppleScript and bash scripts Raycast runs as commands. Icons live in
`icons/`.

| Command | Language | What it does |
|---|---|---|
| New Finder Window | AppleScript | Opens a new Finder window |
| Arc Blank Window | AppleScript | Opens a new blank Arc window |
| Create New Incognito Window | AppleScript | Opens a new incognito browser window |
| Arc Gmails | AppleScript | Opens my Gmail accounts in Arc |
| Open Gmails | bash | Opens my Gmail accounts in the default browser |
| New Window | bash | Opens a new browser window |
| Search From Clipboard | bash | Web-searches the clipboard contents |
| Search Incognito From Clipboard | bash | Web-searches the clipboard contents in an incognito window |

## Install

In Raycast, open Extensions, Script Commands, Add Directories, and add
`src/applescript` and `src/bash`. Each script's header comments carry its
Raycast metadata (title, mode, icon).
