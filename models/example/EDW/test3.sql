with DBT_TAB_COL_2 as (
    select * from {{ref('test2')}}
)
SELECT * from DBT_TAB_COL_2;
