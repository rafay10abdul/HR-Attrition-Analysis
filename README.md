# HR Employee Attrition Analysis
### Tools: MySQL · Excel (Power Query + Pivot Tables) · Power BI


## Business Problem
A company of 1,470 employees is experiencing higher-than-average turnover.
Losing an employee costs 50–200% of their annual salary in recruiting and
training costs. HR leadership needs to know: **who is most likely to leave,
and why — so they can take action before people resign.**


## Dataset
- **Source:** [IBM HR Analytics — Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
- **Size:** 1,470 employees | 35 attributes per employee


## Workflow


| Step | Tool | What I did |
|------|------|------------|
| 1. Data retrieval | MySQL Workbench | Queried and exported the employee dataset |
| 2. Data cleaning | Excel Power Query | Fixed data types, added calculated columns (age group, income bracket, tenure group, satisfaction labels) |
| 3. Analysis | Excel Pivot Tables | 7 pivot tables analysing attrition by dept, role, income, overtime, satisfaction |
| 4. Dashboard | Power BI | 3-page interactive dashboard connected to cleaned Excel file |


## Key Findings

FINDING 1: Attrition rate
Overall attrition rate is 16.12% above the 15%
industry average. 237 out of 1,470 employees left.

FINDING 2: Highest risk role
Sales Representative has the highest attrition rate at 39.76% 
2.47x the company average of 16.12%.

FINDING 3: Overtime is the biggest driver
Overtime employees leave at 30.53% vs 10.44% for non-overtime.
That is a 2.92x difference the strongest predictor in the data.

FINDING 4: Age Factor
Employees with under 25 years have a 39.18% attrition rate vs 10.10% for those in the 34–45 age bracket.


## Recommendations
- Audit overtime practices in the highest-attrition department
- Review compensation for employees earning under $3K/month
- Launch a structured 2-year milestone retention program
- Flag high-risk profile employees for proactive HR check-ins



## Dashboard
🔗 [View Live Power BI Dashboard](https://app.powerbi.com/view?r=eyJrIjoiY2MxZjQyMzEtZGQ0NC00NjA4LWEwNmMtYmRhNDFhYmFjMzViIiwidCI6ImI4ZTY4ZTg5LWZiZGMtNDkxYS1iOGMyLWY1Nzk2ZTFhNDBiOSIsImMiOjl9)
