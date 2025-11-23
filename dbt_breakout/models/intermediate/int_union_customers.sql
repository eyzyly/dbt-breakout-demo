{{ dbt_utils.union_relations(
    relations=[ref('stg_customers'), ref('new_customer_demo')],
) }}