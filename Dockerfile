FROM python:latest

RUN pip install minio 

WORKDIR /data

CMD ['python3']