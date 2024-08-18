
#!/bin/bash
hyprctl dispatch exec "[float] kitty"
sleep 0.5  # Adjust if needed for window to appear
hyprctl dispatch resizeactive exact 200 200
hyprctl dispatch move 20% 20%
