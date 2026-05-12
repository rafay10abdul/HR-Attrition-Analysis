-- ============================================================
-- PROJECT 2: HR EMPLOYEE ATTRITION ANALYSIS
-- SQL Script: Data Retrieval Only
-- Dataset: IBM HR Analytics Employee Attrition (Kaggle)
-- Tool: MySQL Workbench
-- ============================================================
-- YOUR WORKFLOW:
-- Step 1 → Run these queries to explore the data
-- Step 2 → Export to CSV using the export button in Workbench
-- Step 3 → Open in Excel for cleaning and analysis
-- Step 4 → Build final dashboard in Power BI
--
-- HOW TO IMPORT FIRST:
-- 1. Download IBM HR Analytics dataset from Kaggle (.csv)
-- 2. Open MySQL Workbench
-- 3. Run CREATE DATABASE + CREATE TABLE below
-- 4. Right-click hr_attrition table → Table Data Import Wizard
--    → Select your CSV → Finish
-- ============================================================


-- STEP 1: Create database
CREATE DATABASE IF NOT EXISTS HRAnalyticsDB;
USE HRAnalyticsDB;


-- STEP 2: Create table structure
CREATE TABLE IF NOT EXISTS hr_attrition (
    age                         INT,
    attrition                   VARCHAR(5),
    business_travel             VARCHAR(50),
    daily_rate                  INT,
    department                  VARCHAR(100),
    distance_from_home          INT,
    education                   INT,
    education_field             VARCHAR(100),
    employee_count              INT,
    employee_number             INT,
    environment_satisfaction    INT,
    gender                      VARCHAR(10),
    hourly_rate                 INT,
    job_involvement             INT,
    job_level                   INT,
    job_role                    VARCHAR(100),
    job_satisfaction            INT,
    marital_status              VARCHAR(20),
    monthly_income              INT,
    monthly_rate                INT,
    num_companies_worked        INT,
    over_18                     VARCHAR(5),
    over_time                   VARCHAR(5),
    percent_salary_hike         INT,
    performance_rating          INT,
    relationship_satisfaction   INT,
    standard_hours              INT,
    stock_option_level          INT,
    total_working_years         INT,
    training_times_last_year    INT,
    work_life_balance           INT,
    years_at_company            INT,
    years_in_current_role       INT,
    years_since_last_promotion  INT,
    years_with_curr_manager     INT
);


-- ============================================================
-- QUERY 1: Quick check — how many employees loaded?
-- ============================================================
SELECT COUNT(*) AS total_employees FROM hr_attrition;
-- Expected: 1,470


-- ============================================================
-- QUERY 2: Preview the data
-- Get familiar with the columns before exporting.
-- ============================================================
SELECT * FROM hr_attrition LIMIT 20;

-- KEY COLUMNS TO UNDERSTAND:
-- attrition         → 'Yes' (left) or 'No' (stayed)
-- department        → which team they work in
-- job_role          → their specific position
-- monthly_income    → their salary
-- years_at_company  → how long they have worked there
-- over_time         → 'Yes' or 'No'
-- job_satisfaction  → 1=Low, 2=Medium, 3=High, 4=Very High
-- work_life_balance → 1=Bad, 2=Good, 3=Better, 4=Best


-- ============================================================
-- QUERY 3: Quick attrition split
-- Just to understand the data before exporting.
-- ============================================================
SELECT
    attrition,
    COUNT(*) AS count
FROM hr_attrition
GROUP BY attrition;


-- ============================================================
-- QUERY 4: Export the full dataset to Excel
-- Run this → click export icon → save as hr_raw.csv
-- ============================================================
SELECT
    age,
    attrition,
    business_travel,
    department,
    distance_from_home,
    education_field,
    gender,
    job_role,
    job_satisfaction,
    marital_status,
    monthly_income,
    num_companies_worked,
    over_time,
    percent_salary_hike,
    work_life_balance,
    years_at_company,
    years_in_current_role,
    years_since_last_promotion,
    years_with_curr_manager,
    total_working_years,
    training_times_last_year
FROM hr_attrition;

-- ============================================================
-- That is all the SQL you need for this project.
-- Save exported file as: hr_raw.csv
-- Now open it in Excel and follow the excel_powerbi_guide.md
-- ============================================================
