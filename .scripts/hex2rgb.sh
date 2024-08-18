
#!/usr/bin/env bash

hex2rgb() {
    hex=$(echo "${1^^}" | sed 's/#//g')

    if [[ ! "$hex" =~ ^[0-9A-Fa-f]{6}$ ]]; then
        echo "Invalid color"
        return
    fi

    a=$(echo "$hex" | cut -c1-2)
    b=$(echo "$hex" | cut -c3-4)
    c=$(echo "$hex" | cut -c5-6)

    r=$(echo "ibase=16; $a" | bc)
    g=$(echo "ibase=16; $b" | bc)
    b=$(echo "ibase=16; $c" | bc)

    echo "$r,$g,$b"
}

# Check if a hex value was provided
if [ "$#" -ne 1 ]; then
    echo "Please provide a hex color value."
    exit 1
fi

hex2rgb "$1"
