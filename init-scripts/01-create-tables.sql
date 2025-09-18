CREATE TABLE patients (
    patient_id TEXT,
	first_name TEXT,
	last_name TEXT,
	gender TEXT,
	date_of_birth TEXT,
	contact_number TEXT,
	address TEXT,
	registration_date TEXT,
	insurance_provider TEXT,
	insurance_number TEXT,
	email TEXT
);

COPY patients(patient_id,first_name,last_name,gender,date_of_birth,contact_number,address,registration_date,insurance_provider,insurance_number,email)
FROM '/csv_datas/patients.csv'
DELIMITER ','
CSV HEADER;