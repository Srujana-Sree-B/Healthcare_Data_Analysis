/* Age Distribution of Patients */
SELECT Gender, COUNT(*) AS PatientCount
FROM healthcare_table
GROUP BY Gender;

/* Most Common Diagnoses */
SELECT Diagnosis, COUNT(*) AS DiagnosisCount
FROM healthcare_table
GROUP BY Diagnosis
ORDER BY DiagnosisCount DESC
LIMIT 10;

SHOW COLUMNS FROM healthcare_table;

/* Total Recovery Time by Gender*/
SELECT Gender, AVG(`RecoveryTime (Days)`) AS AvgRecoveryTime
FROM healthcare_table
Group By Gender;

/* Patients with some kind of Diagnosis under age of 40*/
SELECT PatientID, Age, Gender, Diagnosis
FROM healthcare_table
WHERE Age < 40;

/* Average Age of Patients by Diagnosis*/
SELECT Diagnosis, AVG(Age) AS AvgAge
FROM healthcare_table
GROUP BY Diagnosis;

/* Top 5 Most Frequent Diagnosis */
SELECT Diagnosis, COUNT(*) AS DiagnosisCount
FROM healthcare_table
GROUP BY Diagnosis
ORDER BY DiagnosisCount DESC
LIMIT 5;

/* Patients Who Have Not Been Readmitted */
SELECT PatientID, COUNT(*) AS NumberOfVisits
FROM healthcare_table
WHERE Readmitted = 'No'
GROUP BY PatientID;

SELECT 
    CASE 
        WHEN Age BETWEEN 0 AND 18 THEN '0-18'
        WHEN Age BETWEEN 19 AND 35 THEN '19-35'
        WHEN Age BETWEEN 36 AND 50 THEN '36-50'
        WHEN Age BETWEEN 51 AND 65 THEN '51-65'
        WHEN Age > 65 THEN '66+'
    END AS AgeGroup,
    AVG(`RecoveryTime (Days)`) AS AvgRecoveryTime
FROM healthcare_table
GROUP BY AgeGroup
ORDER BY AgeGroup Asc;

