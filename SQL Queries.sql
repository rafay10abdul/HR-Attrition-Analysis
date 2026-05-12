CREATE DATABASE IF NOT EXISTS HRAnalyticsDB;
USE HRAnalyticsDB;

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

SELECT COUNT(*) AS total_employees FROM hr_attrition;

SELECT * FROM hr_attrition LIMIT 20;

SELECT
    attrition,
    COUNT(*) AS count
FROM hr_attrition
GROUP BY attrition;


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
