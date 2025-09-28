# Hospital Data Management

This project aims to develop a robust data management and analytics pipeline for hospital data, leveraging modern data engineering techniques to enhance data quality, derive actionable insights, and support historical tracking. The focus is on processing hospital-related tabular data to ensure its usability for operational and analytical purposes.We use these datasets : [Hospital Management](https://www.kaggle.com/datasets/kanakbaghel/hospital-management-dataset)



## Tools
✅ Dcoker

✅ MinIO

✅ Apache Spark(PySpark)

✅ Unit Testing(pytest)

✅ Postgresql

✅ Data Modelling

✅ Graph Data Modelling

✅ Tableau

## Installation

Clone the repo.
```
git clone git@github.com:Trodyy/Hostpital-Data-Management.git
```
Go to the directory.
```
cd Hostpital-Data-Management
```
Run the following command.
```
pip freeze > requirements.txt
```
Build up the project by make command.
```
make build
make up
docker compose up python-client
```
If you didn't install make run following commands(Linux/Ubuntu).
```
sudo apt update
sudo apt install make
```
You can also use docker-compose directly.
```
docker compose build -d
docker compose up -d
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

