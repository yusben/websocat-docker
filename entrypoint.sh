#!/bin/bash

# Check if both WebSocket URL and JSON data environment variables are set
if [ -z "$WEBSOCKET_URL" ] || [ -z "$JSON_DATA" ]; then
    echo "Please set the WEBSOCKET_URL and JSON_DATA environment variables."
    exit 1
fi

# Use echo to send the JSON data to websocat via a pipe
echo $JSON_DATA | websocat -n $WEBSOCKET_URL