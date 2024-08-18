
#!/usr/bin/env bash

readonly DEFAULT_ICON=''

# Function to get media title or default icon if nothing is playing
get_media_info() {
  local media_info
  media_info=$(playerctl metadata --format='{{ title }}' 2>/dev/null)

  if [ -z "$media_info" ]; then
    echo "$DEFAULT_ICON"
  else
    exec playerctl metadata --format='{{ title }}' 
  fi
}

# Continuously output media info in Waybar-compatible JSON format
while true; do
  MEDIA_INFO=$(get_media_info)
  printf '{"text": "%s"}\n' "$MEDIA_INFO"
  sleep 1
done
