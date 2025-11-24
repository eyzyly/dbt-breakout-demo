-- Use dbt_utils.date_spine to create a date table from Jan 1 2024 to Jan 1 2026
With raw_date as (

)

-- Generate helper columns for the date table
-- dt_date as a date type
-- dt_month_date as the first date of the month
-- dt_quarter_date as the first date of the quarter
-- dt_year as the year extracted as integer
-- dt_quarter as the quarter extracted as integer
-- dt_month as the month extracted as integer
-- dt_day as the day extracted as integer
Select 
    date_day as dt_datetime,
    CAST(date_day AS DATE) as dt_date,
    DATE_TRUNC(date_day, month) AS dt_month_date,
--  
    EXTRACT(year FROM date_day) AS dt_year,
    EXTRACT(quarter FROM date_day) AS dt_quarter,
--   
    EXTRACT(day FROM date_day) AS dt_day
from raw_date
