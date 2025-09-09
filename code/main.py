from minio import Minio

client = Minio(
    endpoint="minio:9000",
    access_key="minio",     
    secret_key="minio123" ,
    secure=False                
)

print("Total buckets:", len(client.list_buckets()))
