{% macro limit_data_in_dev(sample_size = 1000) -%}
    {% if target.name in ['personal'] -%}
        LIMIT {{sample_size}}
    {% else %}
        TRUE
    {%- endif %}
{%- endmacro %}