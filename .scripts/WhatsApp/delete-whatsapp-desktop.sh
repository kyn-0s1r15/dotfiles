
#!/bin/bash

# Define the name of the .desktop file
DESKTOP_FILE="whatsapp.desktop"

# Determine the appropriate directory for desktop entries
if [[ "$XDG_CURRENT_DESKTOP" == "NixOS" ]]; then
    # For NixOS, use $out/share/applications
    DEST_DIR="$HOME/.local/share/applications"
else
    # For other Linux distributions, use the standard directory
    DEST_DIR="$HOME/.local/share/applications"
fi

# Define the full path to the .desktop file
FILE_PATH="$DEST_DIR/$DESKTOP_FILE"

# Check if the .desktop file exists and remove it
if [[ -f "$FILE_PATH" ]]; then
    rm "$FILE_PATH"
    echo "Desktop entry removed at $FILE_PATH"
else
    echo "No desktop entry found at $FILE_PATH"
fi
