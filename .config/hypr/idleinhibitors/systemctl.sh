
#!/bin/bash

if ! playerctl -a status | rg Playing -q; then
  systemctl suspend
fi
