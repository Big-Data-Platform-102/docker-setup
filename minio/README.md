## In progress
- Health check
- Multi drive distributed MinIO storage
- Disaster recovery
- .env

## Start the service for the first time
NOTE: If you already create the network while starting an another service, you can skip the first step
1. Create the custom-network network
```
make network
```

2. Create the volume for the single node MinIO container
```
make volume
```

3. Build the image 
```
make build
```
4. Run docker compose
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

## Test Spark connection to MinIO storage
Create a bucket called `testing-spark` using the MinIO UI available at port 9000

Use the notebook `test_spark_minio.ipynb` to save a .csv file to that bucket
