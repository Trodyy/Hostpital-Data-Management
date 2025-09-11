from minio import Minio

client = Minio(
    "minio:9000",  
    access_key="minio", 
    secret_key="minio123", 
    secure=False
)


buckets = client.list_buckets()
for bucket in buckets:
    print(f"Bucket_name: {bucket.name}, Created on: {bucket.creation_date}")
        
