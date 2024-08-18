
#!/bin/bash

PROMPT_MESSAGE="$1"
TEMP_FILE=$(mktemp)

# Run kitty with a prompt for user input
hyprctl dispatch exec "[float] kitty --title 'Git Commit Message' --execute bash -c 'read -p \"$PROMPT_MESSAGE\" msg; echo \"\$msg\" > $TEMP_FILE'"

sleep 0.5  # Adjust if needed for window to appear

# Read the user input from the temporary file
commit_message=$(cat "$TEMP_FILE")

# Clean up the temporary file
rm "$TEMP_FILE"

echo "$commit_message"
