CREATE database health;
USE health;


SELECT * FROM healthcare;

ALTER TABLE healthcare
DROP COLUMN `False` ;

-- 1 Find the total number of patients available in the healthcare dataset.
SELECT COUNT(*) as Total_Patients  
FROM healthcare;

-- 2 List the top 5 hospitals with the highest total billing amounts.
SELECT Hospital,Billing_Amount
FROM healthcare
ORDER BY Billing_Amount DESC
LIMIT 5;

-- 3 Which doctors have treated the most patients? List all doctors along with the number of patients they have treated
SELECT Doctor,
COUNT(*) as Total_Patients
FROM healthcare
GROUP BY doctor
ORDER BY total_patients desc;


-- 4 Show the total and average billing amounts for each gender.
SELECT Gender,
SUM(Billing_Amount) as Total_Billing,
AVG(Billing_Amount) as Avg_Billing_Amount
FROM  healthcare
GROUP BY gender;

-- 5 Identify the room numbers with the highest total billing.
SELECT Hospital,Room_Number,
SUM(Billing_Amount) as Higest_Billing
FROM healthcare
GROUP BY Hospital,room_number
ORDER BY higest_billing desc;

-- 6. Show the number of patients admitted under each admission type.
WITH ConditionCounts AS (
SELECT Medical_Condition,
COUNT(*) AS Patient_Count
FROM healthcare
GROUP BY Medical_Condition
)
SELECT Medical_Condition,Patient_Count
FROM ConditionCounts
ORDER BY patient_count DESC;


-- 7. Which insurance providers have the highest total billing across all patients?
SELECT Insurance_Provider,
SUM(Billing_Amount) as Total_Bill
FROM healthcare
GROUP BY Insurance_Provider
ORDER BY  Total_Bill desc;

-- 8  Which blood types are most common among patients?
SELECT Blood_Type,
COUNT(*) AS patient_count
FROM healthcare
GROUP BY Blood_Type
ORDER BY patient_count DESC;

-- 9 What is the distribution of patients based on their test results?
SELECT Test_results,
COUNT(*) as num_patients
FROM healthcare
GROUP BY test_results;

   
-- 10 Display all patients along with a column that classifies their billing amount as 'Low', 'Medium', or 'High'.

SELECT Billing_Amount,
CASE 
	WHEN Billing_Amount < 20000 THEN 'Low'
	WHEN Billing_Amount BETWEEN 20000 AND 30000 THEN 'Medium'
	ELSE 'High'
END AS Billing_Category
FROM healthcare;

-- 11 Gender-wise Count of Each Medical Condition
SELECT Gender, Medical_Condition, COUNT(*) AS patient_count
FROM healthcare
GROUP BY Gender, Medical_Condition
ORDER BY Gender, patient_count DESC;

-- 12  Top 3 most frequently prescribed medications 
WITH MedCounts AS (
    SELECT Medication, COUNT(*) AS total_prescribed
    FROM healthcare
    GROUP BY Medication
)
SELECT *
FROM MedCounts
ORDER BY total_prescribed DESC
LIMIT 3;

-- 13 How many patients fall under each hospital stay duration category (in days)
SELECT 
    Num_of_Days_at_hospital, 
    COUNT(*) AS patient_count
FROM 
    healthcare
GROUP BY 
    Num_of_Days_at_hospital;


-- 14 Which doctors and hospitals are associated with patients who were billed more than the average billing amount?
SELECT Doctor,Hospital,Billing_Amount
FROM healthcare
WHERE Billing_Amount > (SELECT AVG(Billing_Amount)FROM healthcare);

-- 15 How many patients fall under each admission urgency level:
-- Critical, Semi-Critical, or Non-Critical — based on their Admission_Type 
-- being Emergency, Urgent, or Elective?

SELECT 
    CASE 
        WHEN Admission_Type = 'Emergency' THEN 'Critical'
        WHEN Admission_Type = 'Urgent' THEN 'Semi-Critical'
        WHEN Admission_Type = 'Elective' THEN 'Non-Critical'
        ELSE 'Other'
    END AS Admission_Urgency_Level,
    COUNT(*) AS patient_count
FROM healthcare
GROUP BY 
    CASE 
        WHEN Admission_Type = 'Emergency' THEN 'Critical'
        WHEN Admission_Type = 'Urgent' THEN 'Semi-Critical'
        WHEN Admission_Type = 'Elective' THEN 'Non-Critical'
        ELSE 'Other'
    END;

