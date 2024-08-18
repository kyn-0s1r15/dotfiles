
#!/bin/bash

# Define variables
APP_NAME="WhatsApp"
APP_EXEC="firefox --new-window https://web.whatsapp.com/"
APP_ICON="~/.scripts/WhatsApp/whatsapp-icon.png"
APP_DESCRIPTION="Launches WhatsApp in Firefox"

# Determine the appropriate directory for desktop entries
if [[ "$XDG_CURRENT_DESKTOP" == "NixOS" ]]; then
    # For NixOS, use $out/share/applications
    DEST_DIR="$HOME/.local/share/applications"
else
    # For other Linux distributions, use the standard directory
    DEST_DIR="$HOME/.local/share/applications"
fi

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Create or overwrite the .desktop file
cat <<EOF > "$DEST_DIR/whatsapp.desktop"
[Desktop Entry]
Name=$APP_NAME
Comment=$APP_DESCRIPTION
Exec=$APP_EXEC
Icon=$APP_ICON
Terminal=false
Type=Application
Categories=Internet;
EOF

# Make the .desktop file executable
chmod +x "$DEST_DIR/whatsapp.desktop"

echo "Desktop entry overwritten at $DEST_DIR/whatsapp-firefox.desktop"
