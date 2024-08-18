
#!/bin/bash

# Ensure the terminal is started as a floating window
hyprctl dispatch exec "[float] kitty --hold -e bash -c 'read -p \"$1\" message; echo \$message'" -- "$1"
sleep 0.5  # Adjust if needed for window to appear

# Resize and move the floating window as needed
hyprctl dispatch resizeactive exact 400 200
hyprctl dispatch move 20% 20%
