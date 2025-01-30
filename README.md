# Student Mental Health Analysis

## Table of Contents
- [Project Overview](#-project-overview)
- [SQL Analysis](#️-sql-analysis)
- [Results](#-results)
- [Insights](#-insights)
- [Methodology](#-methodology)
- [Screenshot](#-screenshot)

## 📌 Project Overview
This project analyzes how the **length of stay** (`stay`) impacts mental health scores (depression, social connectedness, and acculturative stress) for international students at a Japanese university. The goal is to determine if longer stays correlate with higher mental health risks.

## 🛠️ SQL Analysis
### Key Requirements:
- Return a table with **9 rows** and **5 columns**: `stay`, `count_int`, `average_phq`, `average_scs`, `average_as`.
- Filter for international students (`inter_dom = 'Inter'`).
- Sort results by `stay` in **descending order**.

### SQL Query
SELECT 
    stay, 
    COUNT(*) AS count_int,
    ROUND(AVG(todep), 2) AS average_phq,
    ROUND(AVG(tosc), 2) AS average_scs,
    ROUND(AVG(toas), 2) AS average_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;

## 📊 Results

| stay | count_int | average_phq | average_scs | average_as |
|------|-----------|-------------|-------------|------------|
| 10   | 1         | 15.00       | 32.00       | 50.00      |
| 8    | 1         | 10.00       | 44.00       | 66.00      |
| 7    | 1         | 4.00        | 48.00       | 45.00      |
| 6    | 3         | 6.00        | 38.00       | 58.67      |
| 5    | 1         | 0.00        | 34.00       | 91.00      |
| 4    | 14        | 8.57        | 33.93       | 87.71      |
| 3    | 46        | 9.09        | 37.13       | 78.00      |
| 2    | 39        | 8.28        | 37.08       | 77.67      |
| 1    | 95        | 7.48        | 38.11       | 72.80      |

---

## 🔍 Insights
- **Longest stays = highest depression**: Students staying **10 years** have the highest average PHQ-9 score (`15.00`).
- **Social connectedness peaks at 7-year stays**: Students staying **7 years** have the highest SCS score (`48.00`).
- **Acculturative stress spikes at 5-year stays**: Students staying **5 years** have the highest ASISS score (`91.00`).
- **Short stays (1 year)**: Lowest depression scores (`7.48`) but moderate stress (`72.80`).

## 🔧 Methodology

### Filter  
Used `WHERE inter_dom = 'Inter'` to focus on **international students**.

### Aggregation  
Calculated averages for:  
- **Depression**: `todep` → `average_phq`  
- **Social connectedness**: `tosc` → `average_scs`  
- **Acculturative stress**: `toas` → `average_as`  

### Grouping  
Grouped results by `stay` to analyze trends by length of stay.

### Sorting  
Ordered results by `stay DESC` to prioritize longer stays.
