#!/bin/bash

# Kafka broker URL
KAFKA_CONTAINER_NAME="broker"
BOOTSTRAP_SERVER="localhost:9092"
TOPIC_NAME="iceberg-demo"

# Define the JSON message you want to push to Kafka
MESSAGE='{"Name": "Jane Doe", "Age": 28, "City": "Los Angeles"}'

# Push the message to Kafka topic
docker exec -i $KAFKA_CONTAINER_NAME bash -c "echo '$MESSAGE' | kafka-console-producer --bootstrap-server $BOOTSTRAP_SERVER --topic $TOPIC_NAME"

# Check if the message was sent successfully
if [ $? -eq 0 ]; then
    echo "Message sent successfully!"
else
    echo "Failed to send message."
fi

