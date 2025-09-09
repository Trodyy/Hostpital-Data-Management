from minio import Minio

client = Minio(
    endpoint="minio:9000",      # container-to-container hostname:port
    access_key="minio",         # from MINIO_ROOT_USER
    secret_key="minio123",      # from MINIO_ROOT_PASSWORD
    secure=False                # because your MinIO doesn’t use https
)

print("Total buckets:", len(client.list_buckets()))
