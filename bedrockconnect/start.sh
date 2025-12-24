#!/bin/bash

echo "Starting start.sh script..."

# Path to the add-on options JSON (from Home Assistant)
CONFIG_PATH=/data/options.json

# Convert the YAML configuration (servers) to JSON format
servers_json=$(jq -c '.servers' $CONFIG_PATH)

# Write the converted JSON to a file for BedrockConnect to use
echo "${servers_json}" > /data/bedrock_servers.json

# Check if the file was created successfully
if [ -f /data/bedrock_servers.json ]; then
    echo "Server list written to /data/bedrock_servers.json"
else
    echo "Failed to write server list! Please specify servers in the extension config."
fi

echo "Initialization completed. Starting BedrockConnect..."
exec java -Xms64M -Xmx256M -jar BedrockConnect-1.0-SNAPSHOT.jar nodb=true
