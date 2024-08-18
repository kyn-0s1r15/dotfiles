
#!/bin/bash
# ~/.scripts/change-theme-bemenu.sh

# Define directories to search for wallpapers
wallpaper_dirs=(
    "$HOME/Pictures/Wallpapers"
)

# Find all image files in the specified directories
wallpaper_files=$(find "${wallpaper_dirs[@]}" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.bmp" \))

# Use bemenu to select a wallpaper
selected_wallpaper=$(echo "$wallpaper_files" | bemenu -i -p "Select a wallpaper")

# If a wallpaper was selected, apply it
if [ -n "$selected_wallpaper" ]; then
    wal -i "$selected_wallpaper"
    ~/.scripts/pywal-rgb.sh
else
    echo "No wallpaper selected."
fi
