
#!/bin/bash

# Get the current state of Bluetooth
output=$(bluetoothctl show)

# Check if Bluetooth is currently powered on
if echo "$output" | grep -q "Powered: yes"; then
    # Bluetooth is on, turn it off
    bluetoothctl power off
    sleep 1
    echo "Bluetooth is now off"
    pkill blueberry
    sleep 1
    echo "Blueberry off"
else
    # Bluetooth is off, turn it on
    bluetoothctl power on
    sleep 1
    echo "Bluetooth is now on"
    hyprctl dispatch exec "[float] blueberry"
    sleep 1
    echo "Blueberry on"
fi
