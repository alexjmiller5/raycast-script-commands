#!/usr/bin/env node

// Required parameters:
// @raycast.schemaVersion 1
// @raycast.title Paste Second Clipboard Item
// @raycast.mode silent
// @raycast.packageName Clipboard

// Optional parameters:
// @raycast.icon 📋
// @raycast.author alexander_miller
// @raycast.authorURL https://raycast.com/alexander_miller

import { Clipboard } from "@raycast/api";
import fs from "fs";
import os from "os";
import path from "path";

// --- All output from this script will be written to this file ---
const LOG_FILE = path.join(os.homedir(), "raycast_debug.log");

/**
 * Appends a message to the log file with a timestamp.
 * @param {string} message The message to log.
 */
function log(message) {
  const timestamp = new Date().toISOString();
  const logMessage = `${timestamp}: ${message}\n`;
  try {
    fs.appendFileSync(LOG_FILE, logMessage);
  } catch (err) {
    // Fallback if logging fails, which is unlikely.
    console.error("Failed to write to log file:", err);
    console.error("Original message:", logMessage);
  }
}

export default async function Command() {
  try {
    const historyItem = await Clipboard.read({ offset: 1 });

    if (historyItem?.text) {
      await Clipboard.paste(historyItem.text);
      log("Success: Pasted second clipboard item.");
    } else if (historyItem) {
      log("Failure: Second clipboard item is not text.");
    } else {
      log("Failure: No second item in clipboard history.");
    }
  } catch (error) {
    const errorMessage = error instanceof Error ? error.message : "An unknown error occurred";
    log(`ERROR: ${errorMessage}`);
    console.error(error);
  }
}