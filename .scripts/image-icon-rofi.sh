
#!/bin/bash
# ~/.scripts/wallpaper-selector-rofi.sh

# Directory containing images
IMAGE_DIR=$1

# Generate rofi input with images as icons
for IMAGE in "$IMAGE_DIR"*; do
    FILE_NAME=$(basename "$IMAGE")
    # Print the filename and icon path with correct delimiter
    printf "%s\x00icon\x1f%s\n" "$FILE_NAME" "$IMAGE"
done | rofi -dmenu -i -theme ~/.config/rofi/config-wallpapers.rasi
