-- 🧩 Interactive Exercise: Limiting Data in Development
-- You are looking at the stg_payments model.
-- In production use case, we would use today or current date for teaching purpose, we are using a fixed date.
-- Below are guiding questions to help you decide how to use the `limit_data_in_dev` macro.
--
-- 1. Which environment should have limited data?
--    Hint: How can you find the `target.name` that represents your personal/dev environment.
--
-- 2. Which column should we filter on?
--
-- 3. How far back should we look?
--    Hint: Think about performance vs usefulness. 3 days? 7 days? 30 days?
--
-- 4. Use the macro like:
--    {{ limit_data_in_dev(
--         ref_date = <HINT: your timestamp column>,
--         lookback_window_days = <HINT: number of days>,
--         fixed_date = <HINT: what is the max available date in the dataset>
--    ) }}
--
-- Try answering the prompts before filling in the arguments.

{% macro limit_data_in_dev(
        ref_date='placeholder',
        lookback_window_days=999999999,
        fixed_date='placeholder'
    ) -%}

    {% if target.name in ['placeholder'] %}
        {{ ref_date }} >= date('{{ fixed_date }}') - interval {{ lookback_window_days }} day
    {% else %}
        TRUE
    {% endif %}

{%- endmacro %}