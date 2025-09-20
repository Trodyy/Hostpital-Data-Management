WITH gen_dates AS (
	SELECT *
	FROM generate_series(
	    '2023-01-01'::date,
	    '2023-12-30'::date,
	    '1 day'::interval
		)
) ,
	yesterday AS (
		SELECT
			*
		FROM patient_analyze
		--WHERE appointment_date = DATE('2022-12-31')
) ,
	today AS (
		SELECT *
		FROM gen_dates
		--WHERE generate_series = DATE('2023-01-01')
)



SELECT 
	COALESCE(y.patient_id , 'unknown') AS patient_id ,
	COALESCE(y.status , 'unknown') AS status ,
	COALESCE(y.appointment_date , DATE('0001-01-01')) AS appointment_date ,
	
FROM today t
INNER JOIN yesterday y
ON t.generate_series = y.appointment_date
--WHERE patient_id IS NULL










