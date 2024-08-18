
#!/bin/bash

if ! playerctl -a status | rg Playing -q; then
  brightnessctl -s set 4
fi
