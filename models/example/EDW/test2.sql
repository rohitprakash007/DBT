with dbt_tab_col_2 as (select * from {{ ref("test1") }}) select * from dbt_tab_col_2
