-- Use a dbt_utils function to union two customer tables
-- table 1: stg_customers and table 2: new_customer_demo
With unioned_customers as (

)

-- For any nulls in email or industry, replace with 'Unknown'
Select 
    _dbt_source_relation as source,
    customer_id,
    first_name,
    last_name,
    CASE


        END AS email,
    CASE 
        
        
        END AS industry
from unioned_customers
