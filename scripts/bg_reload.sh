bg_file="/home/jboyett/Pictures/backgrounds/png_images/current.png"


# Initial background setting
swww img --resize stretch $bg_file

# Watch for file changes and update the background
watch_file() {
  inotifywait -m -e modify "$bg_file" | while read event; do
    echo "changed"
    # swww img --resize stretch "$bg_file"
  done
}

# Start monitoring
watch_file
