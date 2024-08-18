
#!/bin/bash

# Ensure the terminal is started as a floating window
hyprctl dispatch exec "[float] kitty --hold -e bash -c 'read -p \"$1\" message; echo \$message'" -- "$1" resizeactive exact 400 200 move 20% 20%
