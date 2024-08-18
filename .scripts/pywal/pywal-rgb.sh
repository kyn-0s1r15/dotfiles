
#!/usr/bin/env bash
# Define output file
output_file="$HOME/.cache/wal/rgb-colors"
output_file_waybar="$HOME/.cache/wal/colors-waybar-rgb.css"
# Create the output directory if it doesn't exist
rm  "$output_file" "$output_file_waybar"
mkdir -p "$(dirname "$output_file")"
# Clear the output file
> "$output_file"
# Define colors array
colors=(
    "color0"
    "color1"
    "color2"
    "color3"
    "color4"
    "color5"
    "color6"
    "color7"
    "color8"
    "color9"
    "color10"
    "color11"
    "color12"
    "color13"
    "color14"
    "color15"
)
# Source Pywal colors
source "$HOME/.cache/wal/colors.sh"

# Array of opacity values
opacities=("0.44" "0.49" "0.52" "0.58" "0.60" "0.69" "0.96")

# Convert each color from hex to RGB and write to file
for color in "${colors[@]}"; do
    hex_value=$(eval echo "\$$color")
    echo "Debug: Processing $color: $hex_value"  # Debug line
    if [[ -z "$hex_value" || "$hex_value" == "None" ]]; then
        echo "$color-rgb=Invalid color"
    else
        rgb_value=$(~/.scripts/hex2rgb.sh "$hex_value")
        echo "$color-rgb=$rgb_value" >> "$output_file"

        # Remove dots from color names
        color_no_dot=$(echo "$color" | sed 's/\.//g')

        # Loop through each opacity value and format it
        for opacity in "${opacities[@]}"; do
            # Remove the dot and pad with zeroes
            formatted_opacity=$(echo "$opacity" | sed 's/0\./0/; s/\./-/')
            echo "@define-color ${color_no_dot}-opacity-${formatted_opacity} rgba($rgb_value, $opacity);" >> "$output_file_waybar"
        done
    fi
done
