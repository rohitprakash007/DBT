with
    dbt_tabs as (
        select *
        from {{ source("information_schema", "tables") }}
        where table_catalog = 'DBT'
    ),
    dbt_columns as (
        select *
        from {{ ("information_schema", "columns") }}
        where table_catalog = 'DBT'
    )
select *
from dbt_tabs
