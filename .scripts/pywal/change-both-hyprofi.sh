
#!/bin/bash

# Directory containing images
IMAGE_DIR=~/Pictures/Wallpapers/

# Generate rofi input with images as icons
selected_wallpaper=$(for IMAGE in "$IMAGE_DIR"*; do
    FILE_NAME=$(basename "$IMAGE")
    # Print the filename and icon path with correct delimiter
    printf "%s\x00icon\x1f%s\n" "$FILE_NAME" "$IMAGE"
done | rofi -dmenu -i -theme ~/.config/rofi/config-wallpapers.rasi)

# Debugging output: Print the full output
echo "Full rofi output: $selected_wallpaper" >&2

# If a wallpaper was selected, apply it
if [ -n "$selected_wallpaper" ]; then
    # Build the full path manually if needed
    wallpaper_path="$IMAGE_DIR$selected_wallpaper"
    NEW_WALLPAPER="preload = $wallpaper_path\nwallpaper = ,$wallpaper_path"
    # Write the new content to the file
    echo -e "$NEW_WALLPAPER" > "$HOME/.config/hypr/hyprpaper.conf"
    hyprctl hyprpaper preload "$wallpaper_path"
    hyprctl hyprpaper wallpaper ",$wallpaper_path"
    wal -i "$wallpaper_path"
    ~/.scripts/pywal/pywal-rgb.sh
    pkill waybar
    hyprctl dispatch exec waybar
    # Let the user know it's done
    echo "Wallpaper settings in hyprpaper.conf updated successfully."
else
    echo "No wallpaper selected or invalid path." >&2
fi
