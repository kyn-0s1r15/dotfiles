
#!/bin/bash

network=$(nmcli device wifi list | hyprctl dispatch exec "[float] fzf resizeactive exact 400 200 move 20% 20% | awk '{print $1}')
echo "Selected network: $network"
  nmcli device wifi connect "$network" --ask
