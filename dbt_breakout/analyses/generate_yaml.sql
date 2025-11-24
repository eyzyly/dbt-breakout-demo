-- Write macro that generates model docs for dim_customer
-- Link: https://hub.getdbt.com/dbt-labs/codegen/latest/
-- This will come in helpful: https://docs.getdbt.com/reference/resource-configs/persist_docs
{{ codegen.generate_model_yaml(
    model_names=['dim_customer']
) }}