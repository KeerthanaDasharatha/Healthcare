# Project Overview:
This project focuses on analyzing a structured healthcare dataset to derive actionable insights across various healthcare dimensions, including patient profiles, medical conditions, hospital utilization, treatment efficiency, and financial metrics. Python (Jupyter Notebook) for data preparation and exploratory analysis,Leveraging SQL for data querying and Power BI for interactive reporting, the project aims to enhance data-driven decision-making in healthcare. The ultimate objective is to optimize patient care, streamline hospital operations, and identify cost-saving opportunities.

![image](https://github.com/user-attachments/assets/82173228-d00e-40aa-8b91-bd119596a8a4)


# Dataset Overview:
The dataset simulates hospital admission records and includes 15 features covering patient information, medical conditions, billing, and hospital logistics.

Name : name of the patient receiving medical care

Age : Age of the patient 

Gender : Self-identified gender of the patient

Blood Type : Patient's blood group (e.g., A+, O-, B+, AB-)

Medical Condition : Primary diagnosis or health issue identified during treatment

Date of Admission :	The date the patient was formally admitted into the hospital

Doctor : Name of the consulting or treating medical professional

Hospital : Name of the medical facility providing care

Insurance Provider : Name of the company covering the patient's healthcare expenses

Billing Amount : Total charges incurred for treatment and hospital services

Room Number: Assigned inpatient room where the patient stayed during treatment

Admission Type: Nature of admission categorized as Emergency, Urgent, or Elective

Discharge Date: The date on which the patient was formally discharged from the hospital

Medication: Drugs or treatments prescribed during the hospital stay

Test Results: Outcome or status of diagnostic tests conducted (e.g., Normal, Abnormal)


# Dataset Used:

This project uses the Healthcare Dataset (Synthetic), which was downloaded from Kaggle.
It contains anonymized healthcare records useful for data analysis and machine learning practice.

Source: Prasad Ostwal on Kaggle

Dataset Link: https://www.kaggle.com/datasets/prasad22/healthcare-dataset


# Project Goals:
Understand patient demographics and common conditions.

Analyze hospital performance by billing and doctors.

Investigate the role of insurance providers and billing impact.

Categorize patients by admission urgency and hospital stay duration.

Present interactive and visual insights using Power BI dashboards.


# Tools Used:
Python: Data wrangling, aggregation and EDA

MySQL : Querying and cleaning

Power BI: Interactive visual dashboards with filters


# Challenges Faced:
## Learnings:
- Gained hands-on experience working with real-world healthcare data.
- Improved SQL skills using advanced queries like CTEs and nested subqueries.
- Learned to design intuitive Power BI dashboards with drill-down insights.
## Challenges Faced:
- Dealing with inconsistent or missing data during preparation.
- Designing meaningful billing categories required careful analysis.
- Visualizing multi-dimensional data (e.g., billing vs. condition vs. insurance) in Power BI.


# Power-BI Dashboard:
![Screenshot (36)](https://github.com/user-attachments/assets/9b046062-75f9-4cf8-aeeb-51e147662c5d)



# Key Areas of Analysis:
## Patient Demographics

Gender distribution, age trends, and blood type frequency.

## Hospital & Doctor Performance

Top billing hospitals and most active doctors.

## Billing Insights

Billing trends by gender, room, and condition.

Introduced billing tiers to simplify the analysis of patient payment patterns.

## Insurance Analysis

Top-paying insurance providers.

## Admission Insights

Types of admissions (emergency, elective, etc.)

Mapping urgency levels and frequency.

## Medical Analysis

Most common medical conditions.

Frequently prescribed medications.

Distribution of test results.

## Hospital Stay Analysis

Number of patients by days stayed at hospital.


# Conclusion:
The data reveals that a few medical conditions dominate patient visits, with emergency admissions being most frequent. Billing patterns vary widely by hospital and insurance, highlighting areas for financial optimization. These insights can guide better resource planning and operational decisions.



