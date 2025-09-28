from minio import Minio
from minio.error import S3Error

client = Minio(
    "minio:9000",
    access_key="minio",
    secret_key="minio123",
    secure=False
)

bucket_name = "hospital-data"

if not client.bucket_exists(bucket_name):
    client.make_bucket(bucket_name)
    print(f"Bucket '{bucket_name}' created.")
else:
    print(f"Bucket '{bucket_name}' already exists.")


appointment_result = client.fget_object("hospital-data" , "appointments.csv" , "appointments.csv")
billing_result = client.fget_object("hospital-data" , "billing.csv" , "billing.csv")
doctor_result = client.fget_object("hospital-data" , "doctors.csv" , "doctors.csv")
patient_result = client.fget_object("hospital-data" , "patients.csv" , "patients.csv")
treatment_result = client.fget_object("hospital-data" , "treatments.csv" , "treatmentss.csv")
