from minio import Minio

### connect to minio server ####
client = Minio(
    "minio:9000",  
    access_key="minio", 
    secret_key="minio123", 
    secure=False
)
### Creating Buckets ####
b_name = "python-demo-bucket"
client.make_bucket(b_name)
if client.bucket_exists(b_name) :
    print(f"{b_name} already exists.")
else :
    print(f"Created bucket {b_name}.")


### Listing Buckets ####
buckets = client.list_buckets()
for bucket in buckets:
    print(f"Bucket_name: {bucket.name}, Created on: {bucket.creation_date}")


### Uploading Objects ####
b_name = "python-demo-bucket"
o_name = "test.txt"
f_name = "a.txt"
c_type = "text/plain" 
result = client.fput_object(b_name, o_name, f_name, c_type)
print(
    "Created {0} with etag {1}, version-id {2}".format(
        result.object_name, result.etag, result.version_id
    )
)

### download file from minio ####
b_name = "python-demo-bucket"
o_name = "test.txt"
f_name = "shirin.txt"

result = client.fget_object(b_name , o_name , f_name)
print(
    "download {0} with etag {1}, version-id {2}".format(
        result.object_name, result.etag, result.version_id
    )
)



### Listing objects in a bucket ####
b_name = "python-demo-bucket"
objects = client.list_objects(b_name , include_version=True , recursive=True)
for obj in objects:
    print(f"Object: {obj.object_name}, Size: {obj.size}, Last Modified: {obj.last_modified}")


### Deleting an object ####
b_name = "python-demo-bucket"
o_name = "test.txt"
client.remove_object(b_name , o_name)
print(f"Deleted object {o_name} from bucket {b_name}.")


        
