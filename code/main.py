from minio import Minio
from minio.error import S3Error

client = Minio(
    "minio:9000",  
    access_key="minio", 
    secret_key="minio123", 
    secure=False
)

b_name = "python-demo-bucket"

if not client.bucket_exists(b_name):
    client.make_bucket(b_name)
    print("Created bucket:", b_name)
else:
    print(b_name, "already exists.")
