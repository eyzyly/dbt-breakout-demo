-- Implement the star function and exclude the source column
select
{{ dbt_utils.star(from=ref('int_union_customers'), except=["source"]) }}
from {{ ref('int_union_customers') }}