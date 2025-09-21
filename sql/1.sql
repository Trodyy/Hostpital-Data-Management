-- CREATE TABLE patient_analyze (
-- 	patient_id TEXT ,
-- 	reason_for_visit TEXT ,
-- 	date_visit_list DATE[] ,
-- 	cur_date DATE ,
-- 	PRIMARY KEY (patient_id , reason_for_visit , cur_date)
-- )


WITH yesterday AS (
		SELECT
			*
		FROM patient_analyze
		--WHERE cur_date = DATE('2022-12-31 ')
		WHERE cur_date = DATE('2023-01-01 ')
) ,
	today AS (
		SELECT *
		FROM appointments
		WHERE appointment_date = DATE('2023-01-02')
)


INSERT INTO patient_analyze
SELECT
	COALESCE(t.patient_id , y.patient_id) AS patient_id ,
	COALESCE(t.reason_for_visit , y.reason_for_visit) AS reason_for_visit ,
	COALESCE(y.date_visit_list , ARRAY[]::DATE[]) ||
		CASE WHEN t.patient_id IS NOT NULL
		 THEN ARRAY[t.appointment_date]::DATE[]
		 ELSE ARRAY[]::DATE[]
		 END AS date_visit_list ,
	COALESCE(t.appointment_date , y.cur_date + INTERVAL '1 day') AS cur_date
FROM today t
FULL OUTER JOIN yesterday y
ON t.appointment_date = y.cur_date