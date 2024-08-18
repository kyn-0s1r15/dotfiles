
#!/bin/bash

if ! playerctl -a status | rg Playing -q; then
  hyprctl dispatch dpms off
fi
