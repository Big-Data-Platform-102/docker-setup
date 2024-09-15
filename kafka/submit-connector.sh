#!/bin/bash

# Path to your Kafka sink connector JSON file
CONNECTOR_CONFIG_FILE="connectors/iceberg-connector.json"

# Kafka Connect REST API URL
KAFKA_CONNECT_URL="http://localhost:8083/connectors/demo/config"

# Submit the connector 
curl -X PUT $KAFKA_CONNECT_URL -i -H "Content-Type: application/json" -d @"$CONNECTOR_CONFIG_FILE"

# Check if the connector was successfully created
if [ $? -eq 0 ]; then
    echo "Connector submitted successfully!"
else
    echo "Failed to submit connector."
fi

