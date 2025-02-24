#!/bin/bash

URLS=(
  "https://space-insights-xi.vercel.app/"
  "https://spaceinsights.onrender.com/flr"
  "https://spaceinsights.onrender.com/cme"
  "https://spaceinsights.onrender.com/apod"
  "https://spaceinsights.onrender.com/notifications"
  "https://spaceinsights.onrender.com/event-counts"
)

for URL in "${URLS[@]}"; do
  if curl --silent --head --fail "$URL" > /dev/null; then
    echo "Successfully pinged $URL"
  else
    echo "Failed to reach $URL"
  fi
done
