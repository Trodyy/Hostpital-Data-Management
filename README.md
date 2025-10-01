# Hospital Data Management

This project aims to develop a robust data management and analytics pipeline for hospital data, leveraging modern data engineering techniques to enhance data quality, derive actionable insights, and support historical tracking. The focus is on processing hospital-related tabular data to ensure its usability for operational and analytical purposes. We use these datasets: [Hospital Management](https://www.kaggle.com/datasets/kanakbaghel/hospital-management-dataset)

## Tools

✅ Docker\
✅ MinIO\
✅ Apache Spark (PySpark)\
✅ Unit Testing (pytest)\
✅ PostgreSQL\
✅ Data Modelling\
✅ Graph Data Modelling\
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

Build up the project by make command.

```
docker compose build python-client
make up
docker compose up python-client
```

If you didn't install make run following commands (Linux/Ubuntu):

```
sudo apt update
sudo apt install make
```

You can also use docker-compose directly.

```
docker compose build -d
docker compose up -d
```

## Accessing Services

After starting the containers, you can access the services at:

- MinIO: [http://localhost:9000](http://localhost:9000)
- pgAdmin: [http://localhost:8080](http://localhost:8080)
- Jupyter Notebook (PySpark): [http://localhost:8888](http://localhost:8888)

## Tableau Dashboard

You can view the interactive Tableau dashboard here:\
[Hospital Data Tableau Project](https://public.tableau.com/views/HospitalDataTableauProject/ProjectDashboard?\:language=en-US&\:sid=&\:redirect=auth&\:display_count=n&\:origin=viz_share_link)


## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
