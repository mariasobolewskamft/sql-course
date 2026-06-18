/*
I can put a long bit in 
here
lots of notes
*/
--looking at surgical activity
SELECT
	ps.PatientId 
	
	,ps.Hospital
	
	,ps.Ward
	
	,DATEADD (WEEK, -2, ps.AdmittedDate) AS ReminderDate
	
	,ps.AdmittedDate
	
	,ps.dischargedate
	
	,ps.tariff
FROM
	PatientStay ps
WHERE ps.Hospital IN ('kingston','pruh')
	AND ps.Ward LIKE '%surgery'
	AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-02-29'


