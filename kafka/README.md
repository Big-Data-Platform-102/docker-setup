# Kafka service 
## Start the service for the first time
NOTE: If you already create the network while starting an another service, you can skip the first step
1. Create the custom-network network
```
make network
```
2. Build the image 
```
make build
```
3. Run docker compose
```
make up
```

## Restart the service
```
make restart
```
## Stop the service without deleting containers
```
make stop
```
## Stop the service and delete containers
```
make down
```

## Kafka - Iceberg Integration
To integrate Kafka Connect and Iceberg, follow these steps:
1. Start Kafka, MinIO and Spark services
Please refer to service's folder for more detailed instructions. 
2. Create "warehouse" bucket on MinIO
3. Create Connector 
In Kafka folder, run:
```
bash create-connector.sh
```
4. (Optional) Check the status of connector by:
```
curl -s http://localhost:8083/connectors/demo/status | jq
```
5. Push message to Iceberg:
In Kafka folder, run:
```
bash create-message.sh 
```
6. Read the Iceberg table
- Access Spark Notebook by localhost:8888
- Run the notebook "test_load_iceberg.ipynb"

NOTE: Due to some unknown reasons (may be the commit interval in Kafka ?), there is a delay while pushing the messages; therefore, please wait a few seconds between step 5 and 6.  
