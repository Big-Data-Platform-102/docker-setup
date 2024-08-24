# Spark service 
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

## Test Spark integrity with other services
1. Access notebook UI via localhost:8888
2. Open notebook files in work folder for testing:
	- **test_spark\_kafka.ipynb**: testing the integrity between Kafka and Spark
	- **test_spark_hive.ipynb**: testing the integrity between Hive and Spark
