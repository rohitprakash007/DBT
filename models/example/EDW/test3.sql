with DBT_TAB_COL as (
    select * from {{ref('test2')}}
)
SELECT * from DBT_TAB_COL;
