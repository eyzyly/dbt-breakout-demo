-- Use a dbt_utils function to union two customer tables
-- table 1: stg_customers and table 2: new_customer_demo
With unioned_customers as (
    {{ dbt_utils.union_relations(
    relations=[ref('stg_customers'), ref('new_customer_demo')],
) }}
)

-- For any nulls in email or industry, replace with 'Unknown'
Select 
    _dbt_source_relation as source,
    customer_id,
    first_name,
    last_name,
    CASE
        WHEN email IS NULL OR email = '' THEN 'Unknown'
        ELSE email
    END AS email,
    CASE 
        WHEN industry IS NULL OR industry = '' THEN 'Unknown' 
        ELSE industry 
    END AS industry
from unioned_customers
