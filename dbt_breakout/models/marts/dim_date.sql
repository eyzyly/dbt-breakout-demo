With raw_date as (
    {{ dbt_utils.date_spine(
    datepart="day",
    start_date="cast('2024-01-01' as date)",
    end_date="cast('2026-01-01' as date)"
   )
}}
)

Select 
    date_day as dt_datetime,
    CAST(date_day AS DATE) as dt_date,
    DATE_TRUNC(date_day, month) AS dt_month_date,
    DATE_TRUNC(date_day, quarter) AS dt_quarter_date,
    EXTRACT(year FROM date_day) AS dt_year,
    EXTRACT(quarter FROM date_day) AS dt_quarter,
    EXTRACT(month FROM date_day) AS dt_month,
    EXTRACT(day FROM date_day) AS dt_day
from raw_date
