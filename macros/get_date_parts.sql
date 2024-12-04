{% macro get_date_parts(date_column) %}

    (select struct(
        {{date_column}} as original_date,
        EXTRACT(YEAR from {{date_column}}) as year,
        EXTRACT(MONTH from {{date_column}}) as month,
        EXTRACT(DAY from {{date_column}}) as day,
        EXTRACT(DAYOFWEEK from {{date_column}}) as day_of_week,
        EXTRACT(DAYOFYEAR from {{date_column}}) as day_of_year,
        EXTRACT(WEEK from {{date_column}}) as week,
        EXTRACT(QUARTER from {{date_column}}) as quarter) as extract_date
    )

{% endmacro %}