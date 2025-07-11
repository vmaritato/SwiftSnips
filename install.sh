#!/bin/bash

# SwiftSnips installer: copies all .codesnippet files (XML and JSON) to the Xcode CodeSnippets folder

set -e

SNIPPET_DIR_XML="Snippets"
SNIPPET_DIR_JSON="SnippetsJSON"
DEST_DIR="$HOME/Library/Developer/Xcode/UserData/CodeSnippets"

mkdir -p "$DEST_DIR"

# Copy all XML .codesnippet files
find "$SNIPPET_DIR_XML" -type f -name '*.codesnippet' -exec cp {} "$DEST_DIR" \;

# Copy all JSON .codesnippet files
find "$SNIPPET_DIR_JSON" -type f -name '*.codesnippet.json' -exec cp {} "$DEST_DIR" \;

echo "✅ All SwiftSnips snippets have been copied to: $DEST_DIR"
echo "Restart Xcode to see the new snippets." 