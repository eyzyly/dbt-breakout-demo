{% macro limit_data_in_dev(
        ref_date='created_at',
        lookback_window_days=3,
        fixed_date='2018-04-09'
    ) -%}

    {% if target.name in ['personal'] %}
        {{ ref_date }} >= date('{{ fixed_date }}') - interval {{ lookback_window_days }} day
    {% else %}
        TRUE
    {% endif %}

{%- endmacro %}