CREATE TABLE patients (
    patient_id VARCHAR(15),
    first_name TEXT,
    last_name TEXT,
    gender TEXT,
    date_of_birth DATE,
    contact_number TEXT,
    address TEXT,
    registration_date DATE,
    insurance_provider TEXT,
    insurance_number TEXT,
    email TEXT
);

COPY patients(patient_id,first_name,last_name,gender,date_of_birth,contact_number,address,registration_date,insurance_provider,insurance_number,email) 
FROM '/csv_datas/patients.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE appointments ( 
    appointment_id TEXT,
    patient_id TEXT,
    doctor_id TEXT,
    appointment_date DATE,
    appointment_time TIME,
    reason_for_visit TEXT,
    status TEXT
);

COPY appointments(appointment_id,patient_id,doctor_id,appointment_date,appointment_time,reason_for_visit,status)
FROM '/csv_datas/appointments.csv'
DELIMITER ',' 
CSV HEADER;

CREATE TABLE billings ( 
    bill_id TEXT, 
    patient_id TEXT, 
    treatment_id TEXT, 
    bill_date DATE, 
    amount NUMERIC, 
    payment_method TEXT, 
    payment_status TEXT 
);

COPY billings(bill_id,patient_id,treatment_id,bill_date,amount,payment_method,payment_status) 
FROM '/csv_datas/billings.csv' 
DELIMITER ',' 
CSV HEADER;

CREATE TABLE doctors ( 
    doctor_id TEXT, 
    first_name TEXT, 
    last_name TEXT, 
    specialization TEXT, 
    phone_number TEXT, 
    years_experience INT, 
    hospital_branch TEXT, 
    email TEXT 
);

COPY doctors(doctor_id,first_name,last_name,specialization,phone_number,years_experience,hospital_branch,email) 
FROM '/csv_datas/doctors.csv' 
DELIMITER ',' 
CSV HEADER;

CREATE TABLE treatments ( 
    treatment_id TEXT,
    appointment_id TEXT,
    treatment_type TEXT, 
    description TEXT, 
    cost NUMERIC, 
    treatment_date DATE
);

COPY treatments(treatment_id,appointment_id,treatment_type,description,cost,treatment_date) 
FROM '/csv_datas/treatmentss.csv' 
DELIMITER ',' 
CSV HEADER;
