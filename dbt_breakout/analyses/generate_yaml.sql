-- Write macro that generates model docs for dim_customer
-- Link: https://hub.getdbt.com/dbt-labs/codegen/latest/
{{ codegen.generate_model_yaml(
    model_names=['dim_customer']
) }}